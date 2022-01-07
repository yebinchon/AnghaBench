; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/chrome/extr_cros_ec_ishtp.c_prepare_cros_ec_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/chrome/extr_cros_ec_ishtp.c_prepare_cros_ec_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cros_ec_device = type { i32 }
%struct.cros_ish_in_msg = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.cros_ec_command = type { i32, i64*, i32 }

@.str = private unnamed_addr constant [40 x i8] c"Packet too long (%d bytes, expected %d)\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@IN_MSG_EC_RESPONSE_PREAMBLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Bad received packet checksum %d\0A\00", align 1
@EBADMSG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cros_ec_device*, %struct.cros_ish_in_msg*, %struct.cros_ec_command*)* @prepare_cros_ec_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prepare_cros_ec_rx(%struct.cros_ec_device* %0, %struct.cros_ish_in_msg* %1, %struct.cros_ec_command* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cros_ec_device*, align 8
  %6 = alloca %struct.cros_ish_in_msg*, align 8
  %7 = alloca %struct.cros_ec_command*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.cros_ec_device* %0, %struct.cros_ec_device** %5, align 8
  store %struct.cros_ish_in_msg* %1, %struct.cros_ish_in_msg** %6, align 8
  store %struct.cros_ec_command* %2, %struct.cros_ec_command** %7, align 8
  store i64 0, i64* %8, align 8
  %12 = load %struct.cros_ish_in_msg*, %struct.cros_ish_in_msg** %6, align 8
  %13 = getelementptr inbounds %struct.cros_ish_in_msg, %struct.cros_ish_in_msg* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.cros_ec_command*, %struct.cros_ec_command** %7, align 8
  %17 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %16, i32 0, i32 2
  store i32 %15, i32* %17, align 8
  %18 = load %struct.cros_ec_device*, %struct.cros_ec_device** %5, align 8
  %19 = load %struct.cros_ec_command*, %struct.cros_ec_command** %7, align 8
  %20 = call i32 @cros_ec_check_result(%struct.cros_ec_device* %18, %struct.cros_ec_command* %19)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = load i32, i32* %10, align 4
  store i32 %24, i32* %4, align 4
  br label %107

25:                                               ; preds = %3
  %26 = load %struct.cros_ish_in_msg*, %struct.cros_ish_in_msg** %6, align 8
  %27 = getelementptr inbounds %struct.cros_ish_in_msg, %struct.cros_ish_in_msg* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.cros_ec_command*, %struct.cros_ec_command** %7, align 8
  %31 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp sgt i32 %29, %32
  br i1 %33, label %34, label %48

34:                                               ; preds = %25
  %35 = load %struct.cros_ec_device*, %struct.cros_ec_device** %5, align 8
  %36 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.cros_ish_in_msg*, %struct.cros_ish_in_msg** %6, align 8
  %39 = getelementptr inbounds %struct.cros_ish_in_msg, %struct.cros_ish_in_msg* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.cros_ec_command*, %struct.cros_ec_command** %7, align 8
  %43 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @dev_err(i32 %37, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %41, i32 %44)
  %46 = load i32, i32* @ENOSPC, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  br label %107

48:                                               ; preds = %25
  store i32 0, i32* %9, align 4
  br label %49

49:                                               ; preds = %64, %48
  %50 = load i32, i32* %9, align 4
  %51 = sext i32 %50 to i64
  %52 = icmp ult i64 %51, 4
  br i1 %52, label %53, label %67

53:                                               ; preds = %49
  %54 = load %struct.cros_ish_in_msg*, %struct.cros_ish_in_msg** %6, align 8
  %55 = bitcast %struct.cros_ish_in_msg* %54 to i64*
  %56 = load i32, i32* @IN_MSG_EC_RESPONSE_PREAMBLE, align 4
  %57 = load i32, i32* %9, align 4
  %58 = add nsw i32 %56, %57
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i64, i64* %55, i64 %59
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* %8, align 8
  %63 = add nsw i64 %62, %61
  store i64 %63, i64* %8, align 8
  br label %64

64:                                               ; preds = %53
  %65 = load i32, i32* %9, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %9, align 4
  br label %49

67:                                               ; preds = %49
  store i32 8, i32* %11, align 4
  store i32 0, i32* %9, align 4
  br label %68

68:                                               ; preds = %92, %67
  %69 = load i32, i32* %9, align 4
  %70 = load %struct.cros_ish_in_msg*, %struct.cros_ish_in_msg** %6, align 8
  %71 = getelementptr inbounds %struct.cros_ish_in_msg, %struct.cros_ish_in_msg* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = icmp slt i32 %69, %73
  br i1 %74, label %75, label %95

75:                                               ; preds = %68
  %76 = load %struct.cros_ish_in_msg*, %struct.cros_ish_in_msg** %6, align 8
  %77 = bitcast %struct.cros_ish_in_msg* %76 to i64*
  %78 = load i32, i32* %11, align 4
  %79 = load i32, i32* %9, align 4
  %80 = add nsw i32 %78, %79
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i64, i64* %77, i64 %81
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.cros_ec_command*, %struct.cros_ec_command** %7, align 8
  %85 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %84, i32 0, i32 1
  %86 = load i64*, i64** %85, align 8
  %87 = load i32, i32* %9, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i64, i64* %86, i64 %88
  store i64 %83, i64* %89, align 8
  %90 = load i64, i64* %8, align 8
  %91 = add nsw i64 %90, %83
  store i64 %91, i64* %8, align 8
  br label %92

92:                                               ; preds = %75
  %93 = load i32, i32* %9, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %9, align 4
  br label %68

95:                                               ; preds = %68
  %96 = load i64, i64* %8, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %106

98:                                               ; preds = %95
  %99 = load %struct.cros_ec_device*, %struct.cros_ec_device** %5, align 8
  %100 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i64, i64* %8, align 8
  %103 = call i32 @dev_dbg(i32 %101, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i64 %102)
  %104 = load i32, i32* @EBADMSG, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %4, align 4
  br label %107

106:                                              ; preds = %95
  store i32 0, i32* %4, align 4
  br label %107

107:                                              ; preds = %106, %98, %34, %23
  %108 = load i32, i32* %4, align 4
  ret i32 %108
}

declare dso_local i32 @cros_ec_check_result(%struct.cros_ec_device*, %struct.cros_ec_command*) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
