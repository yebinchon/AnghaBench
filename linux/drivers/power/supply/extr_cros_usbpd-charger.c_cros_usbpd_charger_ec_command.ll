; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_cros_usbpd-charger.c_cros_usbpd_charger_ec_command.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_cros_usbpd-charger.c_cros_usbpd_charger_ec_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.charger_data = type { i32, %struct.cros_ec_dev* }
%struct.cros_ec_dev = type { i64 }
%struct.cros_ec_command = type { i32, i32, i32, i8*, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.charger_data*, i32, i32, i8*, i32, i8*, i32)* @cros_usbpd_charger_ec_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cros_usbpd_charger_ec_command(%struct.charger_data* %0, i32 %1, i32 %2, i8* %3, i32 %4, i8* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.charger_data*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.cros_ec_dev*, align 8
  %17 = alloca %struct.cros_ec_command*, align 8
  %18 = alloca i32, align 4
  store %struct.charger_data* %0, %struct.charger_data** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i8* %3, i8** %12, align 8
  store i32 %4, i32* %13, align 4
  store i8* %5, i8** %14, align 8
  store i32 %6, i32* %15, align 4
  %19 = load %struct.charger_data*, %struct.charger_data** %9, align 8
  %20 = getelementptr inbounds %struct.charger_data, %struct.charger_data* %19, i32 0, i32 1
  %21 = load %struct.cros_ec_dev*, %struct.cros_ec_dev** %20, align 8
  store %struct.cros_ec_dev* %21, %struct.cros_ec_dev** %16, align 8
  %22 = load i32, i32* %13, align 4
  %23 = load i32, i32* %15, align 4
  %24 = call i64 @max(i32 %22, i32 %23)
  %25 = add i64 32, %24
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call %struct.cros_ec_command* @kzalloc(i64 %25, i32 %26)
  store %struct.cros_ec_command* %27, %struct.cros_ec_command** %17, align 8
  %28 = load %struct.cros_ec_command*, %struct.cros_ec_command** %17, align 8
  %29 = icmp ne %struct.cros_ec_command* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %7
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %8, align 4
  br label %82

33:                                               ; preds = %7
  %34 = load i32, i32* %10, align 4
  %35 = load %struct.cros_ec_command*, %struct.cros_ec_command** %17, align 8
  %36 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load %struct.cros_ec_dev*, %struct.cros_ec_dev** %16, align 8
  %38 = getelementptr inbounds %struct.cros_ec_dev, %struct.cros_ec_dev* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i32, i32* %11, align 4
  %41 = zext i32 %40 to i64
  %42 = add nsw i64 %39, %41
  %43 = load %struct.cros_ec_command*, %struct.cros_ec_command** %17, align 8
  %44 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %43, i32 0, i32 4
  store i64 %42, i64* %44, align 8
  %45 = load i32, i32* %13, align 4
  %46 = load %struct.cros_ec_command*, %struct.cros_ec_command** %17, align 8
  %47 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* %15, align 4
  %49 = load %struct.cros_ec_command*, %struct.cros_ec_command** %17, align 8
  %50 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 8
  %51 = load i32, i32* %13, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %33
  %54 = load %struct.cros_ec_command*, %struct.cros_ec_command** %17, align 8
  %55 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %54, i32 0, i32 3
  %56 = load i8*, i8** %55, align 8
  %57 = load i8*, i8** %12, align 8
  %58 = load i32, i32* %13, align 4
  %59 = call i32 @memcpy(i8* %56, i8* %57, i32 %58)
  br label %60

60:                                               ; preds = %53, %33
  %61 = load %struct.charger_data*, %struct.charger_data** %9, align 8
  %62 = getelementptr inbounds %struct.charger_data, %struct.charger_data* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.cros_ec_command*, %struct.cros_ec_command** %17, align 8
  %65 = call i32 @cros_ec_cmd_xfer_status(i32 %63, %struct.cros_ec_command* %64)
  store i32 %65, i32* %18, align 4
  %66 = load i32, i32* %18, align 4
  %67 = icmp sge i32 %66, 0
  br i1 %67, label %68, label %78

68:                                               ; preds = %60
  %69 = load i32, i32* %15, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %68
  %72 = load i8*, i8** %14, align 8
  %73 = load %struct.cros_ec_command*, %struct.cros_ec_command** %17, align 8
  %74 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %73, i32 0, i32 3
  %75 = load i8*, i8** %74, align 8
  %76 = load i32, i32* %15, align 4
  %77 = call i32 @memcpy(i8* %72, i8* %75, i32 %76)
  br label %78

78:                                               ; preds = %71, %68, %60
  %79 = load %struct.cros_ec_command*, %struct.cros_ec_command** %17, align 8
  %80 = call i32 @kfree(%struct.cros_ec_command* %79)
  %81 = load i32, i32* %18, align 4
  store i32 %81, i32* %8, align 4
  br label %82

82:                                               ; preds = %78, %30
  %83 = load i32, i32* %8, align 4
  ret i32 %83
}

declare dso_local %struct.cros_ec_command* @kzalloc(i64, i32) #1

declare dso_local i64 @max(i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @cros_ec_cmd_xfer_status(i32, %struct.cros_ec_command*) #1

declare dso_local i32 @kfree(%struct.cros_ec_command*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
