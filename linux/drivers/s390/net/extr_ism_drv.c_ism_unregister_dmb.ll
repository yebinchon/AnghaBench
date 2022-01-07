; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_ism_drv.c_ism_unregister_dmb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_ism_drv.c_ism_unregister_dmb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smcd_dev = type { %struct.ism_dev* }
%struct.ism_dev = type { i32 }
%struct.smcd_dmb = type { i32 }
%union.ism_unreg_dmb = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@ISM_UNREG_DMB = common dso_local global i32 0, align 4
@ISM_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smcd_dev*, %struct.smcd_dmb*)* @ism_unregister_dmb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ism_unregister_dmb(%struct.smcd_dev* %0, %struct.smcd_dmb* %1) #0 {
  %3 = alloca %struct.smcd_dev*, align 8
  %4 = alloca %struct.smcd_dmb*, align 8
  %5 = alloca %struct.ism_dev*, align 8
  %6 = alloca %union.ism_unreg_dmb, align 4
  %7 = alloca i32, align 4
  store %struct.smcd_dev* %0, %struct.smcd_dev** %3, align 8
  store %struct.smcd_dmb* %1, %struct.smcd_dmb** %4, align 8
  %8 = load %struct.smcd_dev*, %struct.smcd_dev** %3, align 8
  %9 = getelementptr inbounds %struct.smcd_dev, %struct.smcd_dev* %8, i32 0, i32 0
  %10 = load %struct.ism_dev*, %struct.ism_dev** %9, align 8
  store %struct.ism_dev* %10, %struct.ism_dev** %5, align 8
  %11 = call i32 @memset(%union.ism_unreg_dmb* %6, i32 0, i32 12)
  %12 = load i32, i32* @ISM_UNREG_DMB, align 4
  %13 = bitcast %union.ism_unreg_dmb* %6 to %struct.TYPE_3__*
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  store i32 %12, i32* %15, align 4
  %16 = bitcast %union.ism_unreg_dmb* %6 to %struct.TYPE_3__*
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  store i32 12, i32* %18, align 4
  %19 = load %struct.smcd_dmb*, %struct.smcd_dmb** %4, align 8
  %20 = getelementptr inbounds %struct.smcd_dmb, %struct.smcd_dmb* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = bitcast %union.ism_unreg_dmb* %6 to %struct.TYPE_3__*
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load %struct.ism_dev*, %struct.ism_dev** %5, align 8
  %25 = call i32 @ism_cmd(%struct.ism_dev* %24, %union.ism_unreg_dmb* %6)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %2
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @ISM_ERROR, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  br label %37

33:                                               ; preds = %28, %2
  %34 = load %struct.ism_dev*, %struct.ism_dev** %5, align 8
  %35 = load %struct.smcd_dmb*, %struct.smcd_dmb** %4, align 8
  %36 = call i32 @ism_free_dmb(%struct.ism_dev* %34, %struct.smcd_dmb* %35)
  br label %37

37:                                               ; preds = %33, %32
  %38 = load i32, i32* %7, align 4
  ret i32 %38
}

declare dso_local i32 @memset(%union.ism_unreg_dmb*, i32, i32) #1

declare dso_local i32 @ism_cmd(%struct.ism_dev*, %union.ism_unreg_dmb*) #1

declare dso_local i32 @ism_free_dmb(%struct.ism_dev*, %struct.smcd_dmb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
