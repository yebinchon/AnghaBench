; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/ucsi/extr_ucsi.c_ucsi_unregister_altmodes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/ucsi/extr_ucsi.c_ucsi_unregister_altmodes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucsi_connector = type { %struct.typec_altmode**, %struct.typec_altmode** }
%struct.typec_altmode = type { i64 }

@USB_TYPEC_DP_SID = common dso_local global i64 0, align 8
@USB_TYPEC_NVIDIA_VLINK_SID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ucsi_connector*, i32)* @ucsi_unregister_altmodes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ucsi_unregister_altmodes(%struct.ucsi_connector* %0, i32 %1) #0 {
  %3 = alloca %struct.ucsi_connector*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.typec_altmode*, align 8
  %6 = alloca %struct.typec_altmode**, align 8
  %7 = alloca i32, align 4
  store %struct.ucsi_connector* %0, %struct.ucsi_connector** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* %4, align 4
  switch i32 %8, label %17 [
    i32 129, label %9
    i32 128, label %13
  ]

9:                                                ; preds = %2
  %10 = load %struct.ucsi_connector*, %struct.ucsi_connector** %3, align 8
  %11 = getelementptr inbounds %struct.ucsi_connector, %struct.ucsi_connector* %10, i32 0, i32 1
  %12 = load %struct.typec_altmode**, %struct.typec_altmode*** %11, align 8
  store %struct.typec_altmode** %12, %struct.typec_altmode*** %6, align 8
  br label %18

13:                                               ; preds = %2
  %14 = load %struct.ucsi_connector*, %struct.ucsi_connector** %3, align 8
  %15 = getelementptr inbounds %struct.ucsi_connector, %struct.ucsi_connector* %14, i32 0, i32 0
  %16 = load %struct.typec_altmode**, %struct.typec_altmode*** %15, align 8
  store %struct.typec_altmode** %16, %struct.typec_altmode*** %6, align 8
  br label %18

17:                                               ; preds = %2
  br label %71

18:                                               ; preds = %13, %9
  br label %19

19:                                               ; preds = %59, %18
  %20 = load %struct.typec_altmode**, %struct.typec_altmode*** %6, align 8
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.typec_altmode*, %struct.typec_altmode** %20, i64 %22
  %24 = load %struct.typec_altmode*, %struct.typec_altmode** %23, align 8
  %25 = icmp ne %struct.typec_altmode* %24, null
  br i1 %25, label %26, label %71

26:                                               ; preds = %19
  %27 = load i32, i32* %4, align 4
  %28 = icmp eq i32 %27, 128
  br i1 %28, label %29, label %59

29:                                               ; preds = %26
  %30 = load %struct.typec_altmode**, %struct.typec_altmode*** %6, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.typec_altmode*, %struct.typec_altmode** %30, i64 %32
  %34 = load %struct.typec_altmode*, %struct.typec_altmode** %33, align 8
  %35 = getelementptr inbounds %struct.typec_altmode, %struct.typec_altmode* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @USB_TYPEC_DP_SID, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %49, label %39

39:                                               ; preds = %29
  %40 = load %struct.typec_altmode**, %struct.typec_altmode*** %6, align 8
  %41 = load i32, i32* %7, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.typec_altmode*, %struct.typec_altmode** %40, i64 %42
  %44 = load %struct.typec_altmode*, %struct.typec_altmode** %43, align 8
  %45 = getelementptr inbounds %struct.typec_altmode, %struct.typec_altmode* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @USB_TYPEC_NVIDIA_VLINK_SID, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %59

49:                                               ; preds = %39, %29
  %50 = load %struct.typec_altmode**, %struct.typec_altmode*** %6, align 8
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.typec_altmode*, %struct.typec_altmode** %50, i64 %52
  %54 = load %struct.typec_altmode*, %struct.typec_altmode** %53, align 8
  %55 = call %struct.typec_altmode* @typec_altmode_get_partner(%struct.typec_altmode* %54)
  store %struct.typec_altmode* %55, %struct.typec_altmode** %5, align 8
  %56 = load %struct.typec_altmode*, %struct.typec_altmode** %5, align 8
  %57 = bitcast %struct.typec_altmode* %56 to i8*
  %58 = call i32 @ucsi_displayport_remove_partner(i8* %57)
  br label %59

59:                                               ; preds = %49, %39, %26
  %60 = load %struct.typec_altmode**, %struct.typec_altmode*** %6, align 8
  %61 = load i32, i32* %7, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.typec_altmode*, %struct.typec_altmode** %60, i64 %62
  %64 = load %struct.typec_altmode*, %struct.typec_altmode** %63, align 8
  %65 = call i32 @typec_unregister_altmode(%struct.typec_altmode* %64)
  %66 = load %struct.typec_altmode**, %struct.typec_altmode*** %6, align 8
  %67 = load i32, i32* %7, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %7, align 4
  %69 = sext i32 %67 to i64
  %70 = getelementptr inbounds %struct.typec_altmode*, %struct.typec_altmode** %66, i64 %69
  store %struct.typec_altmode* null, %struct.typec_altmode** %70, align 8
  br label %19

71:                                               ; preds = %17, %19
  ret void
}

declare dso_local %struct.typec_altmode* @typec_altmode_get_partner(%struct.typec_altmode*) #1

declare dso_local i32 @ucsi_displayport_remove_partner(i8*) #1

declare dso_local i32 @typec_unregister_altmode(%struct.typec_altmode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
