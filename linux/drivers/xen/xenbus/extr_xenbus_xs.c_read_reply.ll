; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/xenbus/extr_xenbus_xs.c_read_reply.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/xenbus/extr_xenbus_xs.c_read_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xb_req_data = type { i64, i32, i8*, i32 }

@xb_req_state_got_reply = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.xb_req_data*)* @read_reply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @read_reply(%struct.xb_req_data* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.xb_req_data*, align 8
  store %struct.xb_req_data* %0, %struct.xb_req_data** %3, align 8
  br label %4

4:                                                ; preds = %33, %1
  %5 = load %struct.xb_req_data*, %struct.xb_req_data** %3, align 8
  %6 = getelementptr inbounds %struct.xb_req_data, %struct.xb_req_data* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @xb_req_state_got_reply, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %34

10:                                               ; preds = %4
  %11 = load %struct.xb_req_data*, %struct.xb_req_data** %3, align 8
  %12 = getelementptr inbounds %struct.xb_req_data, %struct.xb_req_data* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.xb_req_data*, %struct.xb_req_data** %3, align 8
  %15 = call i32 @test_reply(%struct.xb_req_data* %14)
  %16 = call i32 @wait_event(i32 %13, i32 %15)
  %17 = call i32 (...) @xenbus_ok()
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %10
  %20 = load i32, i32* @EIO, align 4
  %21 = sub nsw i32 0, %20
  %22 = call i8* @ERR_PTR(i32 %21)
  store i8* %22, i8** %2, align 8
  br label %38

23:                                               ; preds = %10
  %24 = load %struct.xb_req_data*, %struct.xb_req_data** %3, align 8
  %25 = getelementptr inbounds %struct.xb_req_data, %struct.xb_req_data* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = load %struct.xb_req_data*, %struct.xb_req_data** %3, align 8
  %30 = getelementptr inbounds %struct.xb_req_data, %struct.xb_req_data* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i8* @ERR_PTR(i32 %31)
  store i8* %32, i8** %2, align 8
  br label %38

33:                                               ; preds = %23
  br label %4

34:                                               ; preds = %4
  %35 = load %struct.xb_req_data*, %struct.xb_req_data** %3, align 8
  %36 = getelementptr inbounds %struct.xb_req_data, %struct.xb_req_data* %35, i32 0, i32 2
  %37 = load i8*, i8** %36, align 8
  store i8* %37, i8** %2, align 8
  br label %38

38:                                               ; preds = %34, %28, %19
  %39 = load i8*, i8** %2, align 8
  ret i8* %39
}

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i32 @test_reply(%struct.xb_req_data*) #1

declare dso_local i32 @xenbus_ok(...) #1

declare dso_local i8* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
