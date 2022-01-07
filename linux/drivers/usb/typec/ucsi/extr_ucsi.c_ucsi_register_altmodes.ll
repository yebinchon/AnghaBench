; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/ucsi/extr_ucsi.c_ucsi_register_altmodes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/ucsi/extr_ucsi.c_ucsi_register_altmodes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucsi_connector = type { %struct.TYPE_4__*, i32, i64* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.typec_altmode_desc = type { i32, i64, i32, i32 }
%struct.ucsi_altmode = type { i32, i64, i32, i32 }
%struct.ucsi_control = type { i32 }

@UCSI_MAX_ALTMODES = common dso_local global i32 0, align 4
@UCSI_CAP_ALT_MODE_DETAILS = common dso_local global i32 0, align 4
@UCSI_RECIPIENT_SOP = common dso_local global i32 0, align 4
@UCSI_RECIPIENT_CON = common dso_local global i32 0, align 4
@TYPEC_PORT_DRD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ucsi_connector*, i32)* @ucsi_register_altmodes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ucsi_register_altmodes(%struct.ucsi_connector* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ucsi_connector*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.typec_altmode_desc, align 8
  %8 = alloca [2 x %struct.ucsi_altmode], align 16
  %9 = alloca %struct.ucsi_control, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ucsi_connector* %0, %struct.ucsi_connector** %4, align 8
  store i32 %1, i32* %5, align 4
  %15 = load i32, i32* @UCSI_MAX_ALTMODES, align 4
  store i32 %15, i32* %6, align 4
  store i32 1, i32* %10, align 4
  %16 = load %struct.ucsi_connector*, %struct.ucsi_connector** %4, align 8
  %17 = getelementptr inbounds %struct.ucsi_connector, %struct.ucsi_connector* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @UCSI_CAP_ALT_MODE_DETAILS, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %125

26:                                               ; preds = %2
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @UCSI_RECIPIENT_SOP, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %38

30:                                               ; preds = %26
  %31 = load %struct.ucsi_connector*, %struct.ucsi_connector** %4, align 8
  %32 = getelementptr inbounds %struct.ucsi_connector, %struct.ucsi_connector* %31, i32 0, i32 2
  %33 = load i64*, i64** %32, align 8
  %34 = getelementptr inbounds i64, i64* %33, i64 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  store i32 0, i32* %3, align 4
  br label %125

38:                                               ; preds = %30, %26
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @UCSI_RECIPIENT_CON, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %38
  %43 = load %struct.ucsi_connector*, %struct.ucsi_connector** %4, align 8
  %44 = getelementptr inbounds %struct.ucsi_connector, %struct.ucsi_connector* %43, i32 0, i32 0
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %6, align 4
  br label %49

49:                                               ; preds = %42, %38
  store i32 0, i32* %14, align 4
  br label %50

50:                                               ; preds = %123, %49
  %51 = load i32, i32* %14, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %124

54:                                               ; preds = %50
  %55 = getelementptr inbounds [2 x %struct.ucsi_altmode], [2 x %struct.ucsi_altmode]* %8, i64 0, i64 0
  %56 = call i32 @memset(%struct.ucsi_altmode* %55, i32 0, i32 48)
  %57 = load i32, i32* %5, align 4
  %58 = load %struct.ucsi_connector*, %struct.ucsi_connector** %4, align 8
  %59 = getelementptr inbounds %struct.ucsi_connector, %struct.ucsi_connector* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* %14, align 4
  %62 = getelementptr inbounds %struct.ucsi_control, %struct.ucsi_control* %9, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @UCSI_CMD_GET_ALTERNATE_MODES(i32 %63, i32 %57, i32 %60, i32 %61, i32 1)
  %65 = load %struct.ucsi_connector*, %struct.ucsi_connector** %4, align 8
  %66 = getelementptr inbounds %struct.ucsi_connector, %struct.ucsi_connector* %65, i32 0, i32 0
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = getelementptr inbounds [2 x %struct.ucsi_altmode], [2 x %struct.ucsi_altmode]* %8, i64 0, i64 0
  %69 = call i32 @ucsi_run_command(%struct.TYPE_4__* %67, %struct.ucsi_control* %9, %struct.ucsi_altmode* %68, i32 48)
  store i32 %69, i32* %12, align 4
  %70 = load i32, i32* %12, align 4
  %71 = icmp sle i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %54
  %73 = load i32, i32* %12, align 4
  store i32 %73, i32* %3, align 4
  br label %125

74:                                               ; preds = %54
  %75 = load i32, i32* %12, align 4
  %76 = sext i32 %75 to i64
  %77 = udiv i64 %76, 24
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %10, align 4
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* %14, align 4
  %81 = add nsw i32 %80, %79
  store i32 %81, i32* %14, align 4
  store i32 0, i32* %13, align 4
  br label %82

82:                                               ; preds = %120, %74
  %83 = load i32, i32* %13, align 4
  %84 = load i32, i32* %10, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %123

86:                                               ; preds = %82
  %87 = load i32, i32* %13, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds [2 x %struct.ucsi_altmode], [2 x %struct.ucsi_altmode]* %8, i64 0, i64 %88
  %90 = getelementptr inbounds %struct.ucsi_altmode, %struct.ucsi_altmode* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %94, label %93

93:                                               ; preds = %86
  store i32 0, i32* %3, align 4
  br label %125

94:                                               ; preds = %86
  %95 = bitcast %struct.typec_altmode_desc* %7 to %struct.ucsi_altmode*
  %96 = call i32 @memset(%struct.ucsi_altmode* %95, i32 0, i32 24)
  %97 = load i32, i32* %13, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds [2 x %struct.ucsi_altmode], [2 x %struct.ucsi_altmode]* %8, i64 0, i64 %98
  %100 = getelementptr inbounds %struct.ucsi_altmode, %struct.ucsi_altmode* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = getelementptr inbounds %struct.typec_altmode_desc, %struct.typec_altmode_desc* %7, i32 0, i32 3
  store i32 %101, i32* %102, align 4
  %103 = load i32, i32* %13, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds [2 x %struct.ucsi_altmode], [2 x %struct.ucsi_altmode]* %8, i64 0, i64 %104
  %106 = getelementptr inbounds %struct.ucsi_altmode, %struct.ucsi_altmode* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = getelementptr inbounds %struct.typec_altmode_desc, %struct.typec_altmode_desc* %7, i32 0, i32 1
  store i64 %107, i64* %108, align 8
  %109 = load i32, i32* @TYPEC_PORT_DRD, align 4
  %110 = getelementptr inbounds %struct.typec_altmode_desc, %struct.typec_altmode_desc* %7, i32 0, i32 0
  store i32 %109, i32* %110, align 8
  %111 = load %struct.ucsi_connector*, %struct.ucsi_connector** %4, align 8
  %112 = bitcast %struct.typec_altmode_desc* %7 to %struct.ucsi_altmode*
  %113 = load i32, i32* %5, align 4
  %114 = call i32 @ucsi_register_altmode(%struct.ucsi_connector* %111, %struct.ucsi_altmode* %112, i32 %113)
  store i32 %114, i32* %11, align 4
  %115 = load i32, i32* %11, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %94
  %118 = load i32, i32* %11, align 4
  store i32 %118, i32* %3, align 4
  br label %125

119:                                              ; preds = %94
  br label %120

120:                                              ; preds = %119
  %121 = load i32, i32* %13, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %13, align 4
  br label %82

123:                                              ; preds = %82
  br label %50

124:                                              ; preds = %50
  store i32 0, i32* %3, align 4
  br label %125

125:                                              ; preds = %124, %117, %93, %72, %37, %25
  %126 = load i32, i32* %3, align 4
  ret i32 %126
}

declare dso_local i32 @memset(%struct.ucsi_altmode*, i32, i32) #1

declare dso_local i32 @UCSI_CMD_GET_ALTERNATE_MODES(i32, i32, i32, i32, i32) #1

declare dso_local i32 @ucsi_run_command(%struct.TYPE_4__*, %struct.ucsi_control*, %struct.ucsi_altmode*, i32) #1

declare dso_local i32 @ucsi_register_altmode(%struct.ucsi_connector*, %struct.ucsi_altmode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
