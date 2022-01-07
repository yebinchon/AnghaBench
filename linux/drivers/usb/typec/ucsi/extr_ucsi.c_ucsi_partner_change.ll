; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/ucsi/extr_ucsi.c_ucsi_partner_change.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/ucsi/extr_ucsi.c_ucsi_partner_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucsi_connector = type { i32, %struct.TYPE_3__*, i32, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@TYPEC_HOST = common dso_local global i32 0, align 4
@TYPEC_DEVICE = common dso_local global i32 0, align 4
@UCSI_RECIPIENT_SOP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"con%d: failed to register partner alternate modes\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ucsi_connector*)* @ucsi_partner_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ucsi_partner_change(%struct.ucsi_connector* %0) #0 {
  %2 = alloca %struct.ucsi_connector*, align 8
  %3 = alloca i32, align 4
  store %struct.ucsi_connector* %0, %struct.ucsi_connector** %2, align 8
  %4 = load %struct.ucsi_connector*, %struct.ucsi_connector** %2, align 8
  %5 = getelementptr inbounds %struct.ucsi_connector, %struct.ucsi_connector* %4, i32 0, i32 5
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %55

9:                                                ; preds = %1
  %10 = load %struct.ucsi_connector*, %struct.ucsi_connector** %2, align 8
  %11 = getelementptr inbounds %struct.ucsi_connector, %struct.ucsi_connector* %10, i32 0, i32 4
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  switch i32 %13, label %26 [
    i32 128, label %14
    i32 129, label %20
  ]

14:                                               ; preds = %9
  %15 = load %struct.ucsi_connector*, %struct.ucsi_connector** %2, align 8
  %16 = getelementptr inbounds %struct.ucsi_connector, %struct.ucsi_connector* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @TYPEC_HOST, align 4
  %19 = call i32 @typec_set_data_role(i32 %17, i32 %18)
  br label %27

20:                                               ; preds = %9
  %21 = load %struct.ucsi_connector*, %struct.ucsi_connector** %2, align 8
  %22 = getelementptr inbounds %struct.ucsi_connector, %struct.ucsi_connector* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @TYPEC_DEVICE, align 4
  %25 = call i32 @typec_set_data_role(i32 %23, i32 %24)
  br label %27

26:                                               ; preds = %9
  br label %27

27:                                               ; preds = %26, %20, %14
  %28 = load %struct.ucsi_connector*, %struct.ucsi_connector** %2, align 8
  %29 = getelementptr inbounds %struct.ucsi_connector, %struct.ucsi_connector* %28, i32 0, i32 2
  %30 = call i32 @completion_done(i32* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %27
  %33 = load %struct.ucsi_connector*, %struct.ucsi_connector** %2, align 8
  %34 = getelementptr inbounds %struct.ucsi_connector, %struct.ucsi_connector* %33, i32 0, i32 2
  %35 = call i32 @complete(i32* %34)
  br label %36

36:                                               ; preds = %32, %27
  %37 = load %struct.ucsi_connector*, %struct.ucsi_connector** %2, align 8
  %38 = load i32, i32* @UCSI_RECIPIENT_SOP, align 4
  %39 = call i32 @ucsi_register_altmodes(%struct.ucsi_connector* %37, i32 %38)
  store i32 %39, i32* %3, align 4
  %40 = load i32, i32* %3, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %36
  %43 = load %struct.ucsi_connector*, %struct.ucsi_connector** %2, align 8
  %44 = getelementptr inbounds %struct.ucsi_connector, %struct.ucsi_connector* %43, i32 0, i32 1
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.ucsi_connector*, %struct.ucsi_connector** %2, align 8
  %49 = getelementptr inbounds %struct.ucsi_connector, %struct.ucsi_connector* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @dev_err(i32 %47, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %50)
  br label %55

52:                                               ; preds = %36
  %53 = load %struct.ucsi_connector*, %struct.ucsi_connector** %2, align 8
  %54 = call i32 @ucsi_altmode_update_active(%struct.ucsi_connector* %53)
  br label %55

55:                                               ; preds = %8, %52, %42
  ret void
}

declare dso_local i32 @typec_set_data_role(i32, i32) #1

declare dso_local i32 @completion_done(i32*) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @ucsi_register_altmodes(%struct.ucsi_connector*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @ucsi_altmode_update_active(%struct.ucsi_connector*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
