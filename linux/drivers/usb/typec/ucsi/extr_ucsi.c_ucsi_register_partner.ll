; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/ucsi/extr_ucsi.c_ucsi_register_partner.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/ucsi/extr_ucsi.c_ucsi_register_partner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucsi_connector = type { %struct.typec_partner*, i32, %struct.TYPE_3__*, i32, %struct.TYPE_4__ }
%struct.typec_partner = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32, i64 }
%struct.typec_partner_desc = type { i32, i32 }

@TYPEC_ACCESSORY_DEBUG = common dso_local global i32 0, align 4
@TYPEC_ACCESSORY_AUDIO = common dso_local global i32 0, align 4
@UCSI_CONSTAT_PWR_OPMODE_PD = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"con%d: failed to register partner (%ld)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ucsi_connector*)* @ucsi_register_partner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ucsi_register_partner(%struct.ucsi_connector* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ucsi_connector*, align 8
  %4 = alloca %struct.typec_partner_desc, align 4
  %5 = alloca %struct.typec_partner*, align 8
  store %struct.ucsi_connector* %0, %struct.ucsi_connector** %3, align 8
  %6 = load %struct.ucsi_connector*, %struct.ucsi_connector** %3, align 8
  %7 = getelementptr inbounds %struct.ucsi_connector, %struct.ucsi_connector* %6, i32 0, i32 0
  %8 = load %struct.typec_partner*, %struct.typec_partner** %7, align 8
  %9 = icmp ne %struct.typec_partner* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %58

11:                                               ; preds = %1
  %12 = call i32 @memset(%struct.typec_partner_desc* %4, i32 0, i32 8)
  %13 = load %struct.ucsi_connector*, %struct.ucsi_connector** %3, align 8
  %14 = getelementptr inbounds %struct.ucsi_connector, %struct.ucsi_connector* %13, i32 0, i32 4
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  switch i32 %16, label %23 [
    i32 128, label %17
    i32 129, label %20
  ]

17:                                               ; preds = %11
  %18 = load i32, i32* @TYPEC_ACCESSORY_DEBUG, align 4
  %19 = getelementptr inbounds %struct.typec_partner_desc, %struct.typec_partner_desc* %4, i32 0, i32 1
  store i32 %18, i32* %19, align 4
  br label %24

20:                                               ; preds = %11
  %21 = load i32, i32* @TYPEC_ACCESSORY_AUDIO, align 4
  %22 = getelementptr inbounds %struct.typec_partner_desc, %struct.typec_partner_desc* %4, i32 0, i32 1
  store i32 %21, i32* %22, align 4
  br label %24

23:                                               ; preds = %11
  br label %24

24:                                               ; preds = %23, %20, %17
  %25 = load %struct.ucsi_connector*, %struct.ucsi_connector** %3, align 8
  %26 = getelementptr inbounds %struct.ucsi_connector, %struct.ucsi_connector* %25, i32 0, i32 4
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @UCSI_CONSTAT_PWR_OPMODE_PD, align 8
  %30 = icmp eq i64 %28, %29
  %31 = zext i1 %30 to i32
  %32 = getelementptr inbounds %struct.typec_partner_desc, %struct.typec_partner_desc* %4, i32 0, i32 0
  store i32 %31, i32* %32, align 4
  %33 = load %struct.ucsi_connector*, %struct.ucsi_connector** %3, align 8
  %34 = getelementptr inbounds %struct.ucsi_connector, %struct.ucsi_connector* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = call %struct.typec_partner* @typec_register_partner(i32 %35, %struct.typec_partner_desc* %4)
  store %struct.typec_partner* %36, %struct.typec_partner** %5, align 8
  %37 = load %struct.typec_partner*, %struct.typec_partner** %5, align 8
  %38 = call i64 @IS_ERR(%struct.typec_partner* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %54

40:                                               ; preds = %24
  %41 = load %struct.ucsi_connector*, %struct.ucsi_connector** %3, align 8
  %42 = getelementptr inbounds %struct.ucsi_connector, %struct.ucsi_connector* %41, i32 0, i32 2
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.ucsi_connector*, %struct.ucsi_connector** %3, align 8
  %47 = getelementptr inbounds %struct.ucsi_connector, %struct.ucsi_connector* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.typec_partner*, %struct.typec_partner** %5, align 8
  %50 = call i32 @PTR_ERR(%struct.typec_partner* %49)
  %51 = call i32 @dev_err(i32 %45, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %48, i32 %50)
  %52 = load %struct.typec_partner*, %struct.typec_partner** %5, align 8
  %53 = call i32 @PTR_ERR(%struct.typec_partner* %52)
  store i32 %53, i32* %2, align 4
  br label %58

54:                                               ; preds = %24
  %55 = load %struct.typec_partner*, %struct.typec_partner** %5, align 8
  %56 = load %struct.ucsi_connector*, %struct.ucsi_connector** %3, align 8
  %57 = getelementptr inbounds %struct.ucsi_connector, %struct.ucsi_connector* %56, i32 0, i32 0
  store %struct.typec_partner* %55, %struct.typec_partner** %57, align 8
  store i32 0, i32* %2, align 4
  br label %58

58:                                               ; preds = %54, %40, %10
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i32 @memset(%struct.typec_partner_desc*, i32, i32) #1

declare dso_local %struct.typec_partner* @typec_register_partner(i32, %struct.typec_partner_desc*) #1

declare dso_local i64 @IS_ERR(%struct.typec_partner*) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

declare dso_local i32 @PTR_ERR(%struct.typec_partner*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
