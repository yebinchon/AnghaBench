; ModuleID = '/home/carl/AnghaBench/linux/drivers/ntb/extr_ntb_transport.c_ntb_transport_msi_desc_changed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ntb/extr_ntb_transport.c_ntb_transport_msi_desc_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntb_transport_ctx = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"MSI descriptors changed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @ntb_transport_msi_desc_changed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ntb_transport_msi_desc_changed(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ntb_transport_ctx*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.ntb_transport_ctx*
  store %struct.ntb_transport_ctx* %6, %struct.ntb_transport_ctx** %3, align 8
  %7 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %3, align 8
  %8 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %7, i32 0, i32 2
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = call i32 @dev_dbg(i32* %12, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %14

14:                                               ; preds = %24, %1
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %3, align 8
  %17 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %14
  %21 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %3, align 8
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @ntb_transport_setup_qp_msi(%struct.ntb_transport_ctx* %21, i32 %22)
  br label %24

24:                                               ; preds = %20
  %25 = load i32, i32* %4, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %4, align 4
  br label %14

27:                                               ; preds = %14
  %28 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %3, align 8
  %29 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %28, i32 0, i32 2
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %3, align 8
  %32 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @ntb_peer_db_set(%struct.TYPE_4__* %30, i32 %33)
  ret void
}

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @ntb_transport_setup_qp_msi(%struct.ntb_transport_ctx*, i32) #1

declare dso_local i32 @ntb_peer_db_set(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
