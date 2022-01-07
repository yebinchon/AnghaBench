; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/char/extr_sclp.c___sclp_make_init_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/char/extr_sclp.c___sclp_make_init_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.init_sccb = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { %struct.init_sccb*, i32*, i32*, i64, i32, i32 }

@sclp_init_sccb = common dso_local global %struct.init_sccb* null, align 8
@sclp_init_req = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@SCLP_CMDW_WRITE_EVENT_MASK = common dso_local global i32 0, align 4
@SCLP_REQ_FILLED = common dso_local global i32 0, align 4
@sclp_mask_compat_mode = common dso_local global i64 0, align 8
@SCLP_MASK_SIZE_COMPAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @__sclp_make_init_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__sclp_make_init_req(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.init_sccb*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load %struct.init_sccb*, %struct.init_sccb** @sclp_init_sccb, align 8
  store %struct.init_sccb* %6, %struct.init_sccb** %5, align 8
  %7 = load %struct.init_sccb*, %struct.init_sccb** %5, align 8
  %8 = call i32 @clear_page(%struct.init_sccb* %7)
  %9 = call i32 @memset(%struct.TYPE_5__* @sclp_init_req, i32 0, i32 4)
  %10 = load i32, i32* @SCLP_CMDW_WRITE_EVENT_MASK, align 4
  store i32 %10, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @sclp_init_req, i32 0, i32 5), align 4
  %11 = load i32, i32* @SCLP_REQ_FILLED, align 4
  store i32 %11, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @sclp_init_req, i32 0, i32 4), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @sclp_init_req, i32 0, i32 3), align 8
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @sclp_init_req, i32 0, i32 2), align 8
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @sclp_init_req, i32 0, i32 1), align 8
  %12 = load %struct.init_sccb*, %struct.init_sccb** %5, align 8
  store %struct.init_sccb* %12, %struct.init_sccb** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @sclp_init_req, i32 0, i32 0), align 8
  %13 = load %struct.init_sccb*, %struct.init_sccb** %5, align 8
  %14 = getelementptr inbounds %struct.init_sccb, %struct.init_sccb* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  store i32 8, i32* %15, align 4
  %16 = load i64, i64* @sclp_mask_compat_mode, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load i32, i32* @SCLP_MASK_SIZE_COMPAT, align 4
  %20 = load %struct.init_sccb*, %struct.init_sccb** %5, align 8
  %21 = getelementptr inbounds %struct.init_sccb, %struct.init_sccb* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  br label %25

22:                                               ; preds = %2
  %23 = load %struct.init_sccb*, %struct.init_sccb** %5, align 8
  %24 = getelementptr inbounds %struct.init_sccb, %struct.init_sccb* %23, i32 0, i32 0
  store i32 4, i32* %24, align 4
  br label %25

25:                                               ; preds = %22, %18
  %26 = load %struct.init_sccb*, %struct.init_sccb** %5, align 8
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @sccb_set_recv_mask(%struct.init_sccb* %26, i32 %27)
  %29 = load %struct.init_sccb*, %struct.init_sccb** %5, align 8
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @sccb_set_send_mask(%struct.init_sccb* %29, i32 %30)
  %32 = load %struct.init_sccb*, %struct.init_sccb** %5, align 8
  %33 = call i32 @sccb_set_sclp_recv_mask(%struct.init_sccb* %32, i32 0)
  %34 = load %struct.init_sccb*, %struct.init_sccb** %5, align 8
  %35 = call i32 @sccb_set_sclp_send_mask(%struct.init_sccb* %34, i32 0)
  ret void
}

declare dso_local i32 @clear_page(%struct.init_sccb*) #1

declare dso_local i32 @memset(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @sccb_set_recv_mask(%struct.init_sccb*, i32) #1

declare dso_local i32 @sccb_set_send_mask(%struct.init_sccb*, i32) #1

declare dso_local i32 @sccb_set_sclp_recv_mask(%struct.init_sccb*, i32) #1

declare dso_local i32 @sccb_set_sclp_send_mask(%struct.init_sccb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
