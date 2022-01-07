; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_io_ti.c_check_fw_sanity.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_io_ti.c_check_fw_sanity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edgeport_serial = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.device }
%struct.device = type { i32 }
%struct.firmware = type { i64*, i32 }
%struct.edgeport_fw_hdr = type { i64, i32 }

@.str = private unnamed_addr constant [22 x i8] c"incomplete fw header\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"bad fw size (expected: %u, got: %zu)\0A\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"bad fw checksum (expected: 0x%x, got: 0x%x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.edgeport_serial*, %struct.firmware*)* @check_fw_sanity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_fw_sanity(%struct.edgeport_serial* %0, %struct.firmware* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.edgeport_serial*, align 8
  %5 = alloca %struct.firmware*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.device*, align 8
  %10 = alloca %struct.edgeport_fw_hdr*, align 8
  store %struct.edgeport_serial* %0, %struct.edgeport_serial** %4, align 8
  store %struct.firmware* %1, %struct.firmware** %5, align 8
  store i64 0, i64* %7, align 8
  %11 = load %struct.edgeport_serial*, %struct.edgeport_serial** %4, align 8
  %12 = getelementptr inbounds %struct.edgeport_serial, %struct.edgeport_serial* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  store %struct.device* %16, %struct.device** %9, align 8
  %17 = load %struct.firmware*, %struct.firmware** %5, align 8
  %18 = getelementptr inbounds %struct.firmware, %struct.firmware* %17, i32 0, i32 0
  %19 = load i64*, i64** %18, align 8
  %20 = bitcast i64* %19 to %struct.edgeport_fw_hdr*
  store %struct.edgeport_fw_hdr* %20, %struct.edgeport_fw_hdr** %10, align 8
  %21 = load %struct.firmware*, %struct.firmware** %5, align 8
  %22 = getelementptr inbounds %struct.firmware, %struct.firmware* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = sext i32 %23 to i64
  %25 = icmp ult i64 %24, 16
  br i1 %25, label %26, label %31

26:                                               ; preds = %2
  %27 = load %struct.device*, %struct.device** %9, align 8
  %28 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %27, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %89

31:                                               ; preds = %2
  %32 = load %struct.edgeport_fw_hdr*, %struct.edgeport_fw_hdr** %10, align 8
  %33 = getelementptr inbounds %struct.edgeport_fw_hdr, %struct.edgeport_fw_hdr* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @le16_to_cpu(i32 %34)
  %36 = sext i32 %35 to i64
  %37 = add i64 %36, 16
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %6, align 4
  %39 = load %struct.firmware*, %struct.firmware** %5, align 8
  %40 = getelementptr inbounds %struct.firmware, %struct.firmware* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %53

44:                                               ; preds = %31
  %45 = load %struct.device*, %struct.device** %9, align 8
  %46 = load i32, i32* %6, align 4
  %47 = load %struct.firmware*, %struct.firmware** %5, align 8
  %48 = getelementptr inbounds %struct.firmware, %struct.firmware* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %45, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %46, i32 %49)
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %89

53:                                               ; preds = %31
  store i32 16, i32* %8, align 4
  br label %54

54:                                               ; preds = %70, %53
  %55 = load i32, i32* %8, align 4
  %56 = load %struct.firmware*, %struct.firmware** %5, align 8
  %57 = getelementptr inbounds %struct.firmware, %struct.firmware* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = icmp slt i32 %55, %58
  br i1 %59, label %60, label %73

60:                                               ; preds = %54
  %61 = load %struct.firmware*, %struct.firmware** %5, align 8
  %62 = getelementptr inbounds %struct.firmware, %struct.firmware* %61, i32 0, i32 0
  %63 = load i64*, i64** %62, align 8
  %64 = load i32, i32* %8, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i64, i64* %63, i64 %65
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* %7, align 8
  %69 = add nsw i64 %68, %67
  store i64 %69, i64* %7, align 8
  br label %70

70:                                               ; preds = %60
  %71 = load i32, i32* %8, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %8, align 4
  br label %54

73:                                               ; preds = %54
  %74 = load i64, i64* %7, align 8
  %75 = load %struct.edgeport_fw_hdr*, %struct.edgeport_fw_hdr** %10, align 8
  %76 = getelementptr inbounds %struct.edgeport_fw_hdr, %struct.edgeport_fw_hdr* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %74, %77
  br i1 %78, label %79, label %88

79:                                               ; preds = %73
  %80 = load %struct.device*, %struct.device** %9, align 8
  %81 = load %struct.edgeport_fw_hdr*, %struct.edgeport_fw_hdr** %10, align 8
  %82 = getelementptr inbounds %struct.edgeport_fw_hdr, %struct.edgeport_fw_hdr* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* %7, align 8
  %85 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %80, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i64 %83, i64 %84)
  %86 = load i32, i32* @EINVAL, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %3, align 4
  br label %89

88:                                               ; preds = %73
  store i32 0, i32* %3, align 4
  br label %89

89:                                               ; preds = %88, %79, %44, %26
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
