; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_sony-laptop.c_sony_nc_rfkill_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_sony-laptop.c_sony_nc_rfkill_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device = type { i32 }

@sony_rfkill_handle = common dso_local global i32 0, align 4
@sony_nc_acpi_handle = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"SN06\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Radio devices, found 0x%.2x\0A\00", align 1
@sony_rfkill_devices = common dso_local global i32* null, align 8
@SONY_WIFI = common dso_local global i64 0, align 8
@SONY_BLUETOOTH = common dso_local global i64 0, align 8
@SONY_WWAN = common dso_local global i64 0, align 8
@SONY_WIMAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_device*, i32)* @sony_nc_rfkill_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sony_nc_rfkill_setup(%struct.acpi_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.acpi_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [32 x i8], align 16
  store %struct.acpi_device* %0, %struct.acpi_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = bitcast [32 x i8]* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %9, i8 0, i64 32, i1 false)
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @sony_find_snc_handle(i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %5, align 4
  store i32 %12, i32* @sony_rfkill_handle, align 4
  %13 = load i32, i32* @sony_nc_acpi_handle, align 4
  %14 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %15 = call i32 @sony_nc_buffer_call(i32 %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* %6, i8* %14, i32 32)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* %7, align 4
  store i32 %19, i32* %3, align 4
  br label %121

20:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %21

21:                                               ; preds = %117, %20
  %22 = load i32, i32* %7, align 4
  %23 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %24 = call i32 @ARRAY_SIZE(i8* %23)
  %25 = icmp slt i32 %22, %24
  br i1 %25, label %26, label %120

26:                                               ; preds = %21
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 %28
  %30 = load i8, i8* %29, align 1
  %31 = zext i8 %30 to i32
  %32 = icmp eq i32 %31, 255
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  br label %120

34:                                               ; preds = %26
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 %36
  %38 = load i8, i8* %37, align 1
  %39 = call i32 @dprintk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8 zeroext %38)
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 %41
  %43 = load i8, i8* %42, align 1
  %44 = zext i8 %43 to i32
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %56

46:                                               ; preds = %34
  %47 = load i32*, i32** @sony_rfkill_devices, align 8
  %48 = load i64, i64* @SONY_WIFI, align 8
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %46
  %53 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %54 = load i64, i64* @SONY_WIFI, align 8
  %55 = call i32 @sony_nc_setup_rfkill(%struct.acpi_device* %53, i64 %54)
  br label %56

56:                                               ; preds = %52, %46, %34
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 %58
  %60 = load i8, i8* %59, align 1
  %61 = zext i8 %60 to i32
  %62 = icmp eq i32 %61, 16
  br i1 %62, label %63, label %73

63:                                               ; preds = %56
  %64 = load i32*, i32** @sony_rfkill_devices, align 8
  %65 = load i64, i64* @SONY_BLUETOOTH, align 8
  %66 = getelementptr inbounds i32, i32* %64, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %73, label %69

69:                                               ; preds = %63
  %70 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %71 = load i64, i64* @SONY_BLUETOOTH, align 8
  %72 = call i32 @sony_nc_setup_rfkill(%struct.acpi_device* %70, i64 %71)
  br label %73

73:                                               ; preds = %69, %63, %56
  %74 = load i32, i32* %7, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 %75
  %77 = load i8, i8* %76, align 1
  %78 = zext i8 %77 to i32
  %79 = and i32 240, %78
  %80 = icmp eq i32 %79, 32
  br i1 %80, label %89, label %81

81:                                               ; preds = %73
  %82 = load i32, i32* %7, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 %83
  %85 = load i8, i8* %84, align 1
  %86 = zext i8 %85 to i32
  %87 = and i32 240, %86
  %88 = icmp eq i32 %87, 80
  br i1 %88, label %89, label %99

89:                                               ; preds = %81, %73
  %90 = load i32*, i32** @sony_rfkill_devices, align 8
  %91 = load i64, i64* @SONY_WWAN, align 8
  %92 = getelementptr inbounds i32, i32* %90, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %99, label %95

95:                                               ; preds = %89
  %96 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %97 = load i64, i64* @SONY_WWAN, align 8
  %98 = call i32 @sony_nc_setup_rfkill(%struct.acpi_device* %96, i64 %97)
  br label %99

99:                                               ; preds = %95, %89, %81
  %100 = load i32, i32* %7, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 %101
  %103 = load i8, i8* %102, align 1
  %104 = zext i8 %103 to i32
  %105 = icmp eq i32 %104, 48
  br i1 %105, label %106, label %116

106:                                              ; preds = %99
  %107 = load i32*, i32** @sony_rfkill_devices, align 8
  %108 = load i64, i64* @SONY_WIMAX, align 8
  %109 = getelementptr inbounds i32, i32* %107, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %116, label %112

112:                                              ; preds = %106
  %113 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %114 = load i64, i64* @SONY_WIMAX, align 8
  %115 = call i32 @sony_nc_setup_rfkill(%struct.acpi_device* %113, i64 %114)
  br label %116

116:                                              ; preds = %112, %106, %99
  br label %117

117:                                              ; preds = %116
  %118 = load i32, i32* %7, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %7, align 4
  br label %21

120:                                              ; preds = %33, %21
  store i32 0, i32* %3, align 4
  br label %121

121:                                              ; preds = %120, %18
  %122 = load i32, i32* %3, align 4
  ret i32 %122
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @sony_find_snc_handle(i32) #2

declare dso_local i32 @sony_nc_buffer_call(i32, i8*, i32*, i8*, i32) #2

declare dso_local i32 @ARRAY_SIZE(i8*) #2

declare dso_local i32 @dprintk(i8*, i8 zeroext) #2

declare dso_local i32 @sony_nc_setup_rfkill(%struct.acpi_device*, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
