; ModuleID = '/home/carl/AnghaBench/linux/drivers/ntb/extr_msi.c_ntbm_msi_callback_match.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ntb/extr_msi.c_ntbm_msi_callback_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.ntb_dev = type { i32 }
%struct.ntb_msi_devres = type { i8*, %struct.ntb_dev* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i8*, i8*)* @ntbm_msi_callback_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ntbm_msi_callback_match(%struct.device* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.ntb_dev*, align 8
  %8 = alloca %struct.ntb_msi_devres*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = call %struct.ntb_dev* @dev_ntb(%struct.device* %9)
  store %struct.ntb_dev* %10, %struct.ntb_dev** %7, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.ntb_msi_devres*
  store %struct.ntb_msi_devres* %12, %struct.ntb_msi_devres** %8, align 8
  %13 = load %struct.ntb_msi_devres*, %struct.ntb_msi_devres** %8, align 8
  %14 = getelementptr inbounds %struct.ntb_msi_devres, %struct.ntb_msi_devres* %13, i32 0, i32 1
  %15 = load %struct.ntb_dev*, %struct.ntb_dev** %14, align 8
  %16 = load %struct.ntb_dev*, %struct.ntb_dev** %7, align 8
  %17 = icmp eq %struct.ntb_dev* %15, %16
  br i1 %17, label %18, label %24

18:                                               ; preds = %3
  %19 = load %struct.ntb_msi_devres*, %struct.ntb_msi_devres** %8, align 8
  %20 = getelementptr inbounds %struct.ntb_msi_devres, %struct.ntb_msi_devres* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = icmp eq i8* %21, %22
  br label %24

24:                                               ; preds = %18, %3
  %25 = phi i1 [ false, %3 ], [ %23, %18 ]
  %26 = zext i1 %25 to i32
  ret i32 %26
}

declare dso_local %struct.ntb_dev* @dev_ntb(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
