; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/storage/extr_transport.c_usb_stor_reset_common.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/storage/extr_transport.c_usb_stor_reset_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.us_data = type { i32, i32, i32, i32, i32 }

@US_FLIDX_DISCONNECTING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"No reset during disconnect\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Soft reset failed: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Reset interrupted by disconnect\0A\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"Soft reset: clearing bulk-in endpoint halt\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"Soft reset: clearing bulk-out endpoint halt\0A\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"Soft reset failed\0A\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"Soft reset done\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.us_data*, i32, i32, i32, i32, i8*, i32)* @usb_stor_reset_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb_stor_reset_common(%struct.us_data* %0, i32 %1, i32 %2, i32 %3, i32 %4, i8* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.us_data*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.us_data* %0, %struct.us_data** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i8* %5, i8** %14, align 8
  store i32 %6, i32* %15, align 4
  %18 = load i32, i32* @US_FLIDX_DISCONNECTING, align 4
  %19 = load %struct.us_data*, %struct.us_data** %9, align 8
  %20 = getelementptr inbounds %struct.us_data, %struct.us_data* %19, i32 0, i32 2
  %21 = call i64 @test_bit(i32 %18, i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %7
  %24 = load %struct.us_data*, %struct.us_data** %9, align 8
  %25 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %24, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @EIO, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %8, align 4
  br label %100

28:                                               ; preds = %7
  %29 = load %struct.us_data*, %struct.us_data** %9, align 8
  %30 = load %struct.us_data*, %struct.us_data** %9, align 8
  %31 = getelementptr inbounds %struct.us_data, %struct.us_data* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* %12, align 4
  %36 = load i32, i32* %13, align 4
  %37 = load i8*, i8** %14, align 8
  %38 = load i32, i32* %15, align 4
  %39 = load i32, i32* @HZ, align 4
  %40 = mul nsw i32 5, %39
  %41 = call i32 @usb_stor_control_msg(%struct.us_data* %29, i32 %32, i32 %33, i32 %34, i32 %35, i32 %36, i8* %37, i32 %38, i32 %40)
  store i32 %41, i32* %16, align 4
  %42 = load i32, i32* %16, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %28
  %45 = load %struct.us_data*, %struct.us_data** %9, align 8
  %46 = load i32, i32* %16, align 4
  %47 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %45, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* %16, align 4
  store i32 %48, i32* %8, align 4
  br label %100

49:                                               ; preds = %28
  %50 = load %struct.us_data*, %struct.us_data** %9, align 8
  %51 = getelementptr inbounds %struct.us_data, %struct.us_data* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @US_FLIDX_DISCONNECTING, align 4
  %54 = load %struct.us_data*, %struct.us_data** %9, align 8
  %55 = getelementptr inbounds %struct.us_data, %struct.us_data* %54, i32 0, i32 2
  %56 = call i64 @test_bit(i32 %53, i32* %55)
  %57 = load i32, i32* @HZ, align 4
  %58 = mul nsw i32 %57, 6
  %59 = call i32 @wait_event_interruptible_timeout(i32 %52, i64 %56, i32 %58)
  %60 = load i32, i32* @US_FLIDX_DISCONNECTING, align 4
  %61 = load %struct.us_data*, %struct.us_data** %9, align 8
  %62 = getelementptr inbounds %struct.us_data, %struct.us_data* %61, i32 0, i32 2
  %63 = call i64 @test_bit(i32 %60, i32* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %49
  %66 = load %struct.us_data*, %struct.us_data** %9, align 8
  %67 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %66, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %68 = load i32, i32* @EIO, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %8, align 4
  br label %100

70:                                               ; preds = %49
  %71 = load %struct.us_data*, %struct.us_data** %9, align 8
  %72 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %71, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  %73 = load %struct.us_data*, %struct.us_data** %9, align 8
  %74 = load %struct.us_data*, %struct.us_data** %9, align 8
  %75 = getelementptr inbounds %struct.us_data, %struct.us_data* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @usb_stor_clear_halt(%struct.us_data* %73, i32 %76)
  store i32 %77, i32* %16, align 4
  %78 = load %struct.us_data*, %struct.us_data** %9, align 8
  %79 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %78, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0))
  %80 = load %struct.us_data*, %struct.us_data** %9, align 8
  %81 = load %struct.us_data*, %struct.us_data** %9, align 8
  %82 = getelementptr inbounds %struct.us_data, %struct.us_data* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @usb_stor_clear_halt(%struct.us_data* %80, i32 %83)
  store i32 %84, i32* %17, align 4
  %85 = load i32, i32* %16, align 4
  %86 = icmp sge i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %70
  %88 = load i32, i32* %17, align 4
  store i32 %88, i32* %16, align 4
  br label %89

89:                                               ; preds = %87, %70
  %90 = load i32, i32* %16, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %89
  %93 = load %struct.us_data*, %struct.us_data** %9, align 8
  %94 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %93, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  br label %98

95:                                               ; preds = %89
  %96 = load %struct.us_data*, %struct.us_data** %9, align 8
  %97 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %96, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  br label %98

98:                                               ; preds = %95, %92
  %99 = load i32, i32* %16, align 4
  store i32 %99, i32* %8, align 4
  br label %100

100:                                              ; preds = %98, %65, %44, %23
  %101 = load i32, i32* %8, align 4
  ret i32 %101
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @usb_stor_dbg(%struct.us_data*, i8*, ...) #1

declare dso_local i32 @usb_stor_control_msg(%struct.us_data*, i32, i32, i32, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @wait_event_interruptible_timeout(i32, i64, i32) #1

declare dso_local i32 @usb_stor_clear_halt(%struct.us_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
