; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/chrome/extr_cros_ec_lightbar.c_sequence_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/chrome/extr_cros_ec_lightbar.c_sequence_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.ec_params_lightbar = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.cros_ec_command = type { i64, i64 }
%struct.cros_ec_dev = type { i32 }

@seqname = common dso_local global i32* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@LIGHTBAR_CMD_SEQ = common dso_local global i32 0, align 4
@EC_RES_SUCCESS = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @sequence_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sequence_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.ec_params_lightbar*, align 8
  %11 = alloca %struct.cros_ec_command*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.cros_ec_dev*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = load %struct.device*, %struct.device** %6, align 8
  %17 = call %struct.cros_ec_dev* @to_cros_ec_dev(%struct.device* %16)
  store %struct.cros_ec_dev* %17, %struct.cros_ec_dev** %15, align 8
  store i32 0, i32* %14, align 4
  br label %18

18:                                               ; preds = %33, %4
  %19 = load i32, i32* %14, align 4
  %20 = sext i32 %19 to i64
  %21 = load i64, i64* %9, align 8
  %22 = icmp ult i64 %20, %21
  br i1 %22, label %23, label %36

23:                                               ; preds = %18
  %24 = load i8*, i8** %8, align 8
  %25 = load i32, i32* %14, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, i8* %24, i64 %26
  %28 = load i8, i8* %27, align 1
  %29 = call i32 @isalnum(i8 signext %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %23
  br label %36

32:                                               ; preds = %23
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %14, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %14, align 4
  br label %18

36:                                               ; preds = %31, %18
  store i32 0, i32* %12, align 4
  br label %37

37:                                               ; preds = %54, %36
  %38 = load i32, i32* %12, align 4
  %39 = load i32*, i32** @seqname, align 8
  %40 = call i32 @ARRAY_SIZE(i32* %39)
  %41 = icmp ult i32 %38, %40
  br i1 %41, label %42, label %57

42:                                               ; preds = %37
  %43 = load i32*, i32** @seqname, align 8
  %44 = load i32, i32* %12, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = load i8*, i8** %8, align 8
  %49 = load i32, i32* %14, align 4
  %50 = call i32 @strncasecmp(i32 %47, i8* %48, i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %42
  br label %57

53:                                               ; preds = %42
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %12, align 4
  %56 = add i32 %55, 1
  store i32 %56, i32* %12, align 4
  br label %37

57:                                               ; preds = %52, %37
  %58 = load i32, i32* %12, align 4
  %59 = load i32*, i32** @seqname, align 8
  %60 = call i32 @ARRAY_SIZE(i32* %59)
  %61 = icmp uge i32 %58, %60
  br i1 %61, label %62, label %70

62:                                               ; preds = %57
  %63 = load i8*, i8** %8, align 8
  %64 = call i32 @kstrtouint(i8* %63, i32 0, i32* %12)
  store i32 %64, i32* %13, align 4
  %65 = load i32, i32* %13, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %62
  %68 = load i32, i32* %13, align 4
  store i32 %68, i32* %5, align 4
  br label %119

69:                                               ; preds = %62
  br label %70

70:                                               ; preds = %69, %57
  %71 = load %struct.cros_ec_dev*, %struct.cros_ec_dev** %15, align 8
  %72 = call %struct.cros_ec_command* @alloc_lightbar_cmd_msg(%struct.cros_ec_dev* %71)
  store %struct.cros_ec_command* %72, %struct.cros_ec_command** %11, align 8
  %73 = load %struct.cros_ec_command*, %struct.cros_ec_command** %11, align 8
  %74 = icmp ne %struct.cros_ec_command* %73, null
  br i1 %74, label %78, label %75

75:                                               ; preds = %70
  %76 = load i32, i32* @ENOMEM, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %5, align 4
  br label %119

78:                                               ; preds = %70
  %79 = load %struct.cros_ec_command*, %struct.cros_ec_command** %11, align 8
  %80 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = inttoptr i64 %81 to %struct.ec_params_lightbar*
  store %struct.ec_params_lightbar* %82, %struct.ec_params_lightbar** %10, align 8
  %83 = load i32, i32* @LIGHTBAR_CMD_SEQ, align 4
  %84 = load %struct.ec_params_lightbar*, %struct.ec_params_lightbar** %10, align 8
  %85 = getelementptr inbounds %struct.ec_params_lightbar, %struct.ec_params_lightbar* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 4
  %86 = load i32, i32* %12, align 4
  %87 = load %struct.ec_params_lightbar*, %struct.ec_params_lightbar** %10, align 8
  %88 = getelementptr inbounds %struct.ec_params_lightbar, %struct.ec_params_lightbar* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  store i32 %86, i32* %89, align 4
  %90 = call i32 (...) @lb_throttle()
  store i32 %90, i32* %13, align 4
  %91 = load i32, i32* %13, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %78
  br label %115

94:                                               ; preds = %78
  %95 = load %struct.cros_ec_dev*, %struct.cros_ec_dev** %15, align 8
  %96 = getelementptr inbounds %struct.cros_ec_dev, %struct.cros_ec_dev* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.cros_ec_command*, %struct.cros_ec_command** %11, align 8
  %99 = call i32 @cros_ec_cmd_xfer(i32 %97, %struct.cros_ec_command* %98)
  store i32 %99, i32* %13, align 4
  %100 = load i32, i32* %13, align 4
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %94
  br label %115

103:                                              ; preds = %94
  %104 = load %struct.cros_ec_command*, %struct.cros_ec_command** %11, align 8
  %105 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @EC_RES_SUCCESS, align 8
  %108 = icmp ne i64 %106, %107
  br i1 %108, label %109, label %112

109:                                              ; preds = %103
  %110 = load i32, i32* @EINVAL, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %13, align 4
  br label %115

112:                                              ; preds = %103
  %113 = load i64, i64* %9, align 8
  %114 = trunc i64 %113 to i32
  store i32 %114, i32* %13, align 4
  br label %115

115:                                              ; preds = %112, %109, %102, %93
  %116 = load %struct.cros_ec_command*, %struct.cros_ec_command** %11, align 8
  %117 = call i32 @kfree(%struct.cros_ec_command* %116)
  %118 = load i32, i32* %13, align 4
  store i32 %118, i32* %5, align 4
  br label %119

119:                                              ; preds = %115, %75, %67
  %120 = load i32, i32* %5, align 4
  ret i32 %120
}

declare dso_local %struct.cros_ec_dev* @to_cros_ec_dev(%struct.device*) #1

declare dso_local i32 @isalnum(i8 signext) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @strncasecmp(i32, i8*, i32) #1

declare dso_local i32 @kstrtouint(i8*, i32, i32*) #1

declare dso_local %struct.cros_ec_command* @alloc_lightbar_cmd_msg(%struct.cros_ec_dev*) #1

declare dso_local i32 @lb_throttle(...) #1

declare dso_local i32 @cros_ec_cmd_xfer(i32, %struct.cros_ec_command*) #1

declare dso_local i32 @kfree(%struct.cros_ec_command*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
