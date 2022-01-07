; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_tcpm.c_tcpm_pd_build_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_tcpm.c_tcpm_pd_build_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpm_port = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32*, i32* }

@.str = private unnamed_addr constant [22 x i8] c"Invalid PDO selected!\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@RDO_USB_COMM = common dso_local global i32 0, align 4
@RDO_NO_SUSPEND = common dso_local global i32 0, align 4
@RDO_CAP_MISMATCH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"cc=%d cc1=%d cc2=%d vbus=%d vconn=%s polarity=%d\00", align 1
@TYPEC_SOURCE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"source\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"sink\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"Requesting PDO %d: %u mV, %u mW%s\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c" [mismatch]\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"Requesting PDO %d: %u mV, %u mA%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcpm_port*, i32*)* @tcpm_pd_build_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcpm_pd_build_request(%struct.tcpm_port* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tcpm_port*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.tcpm_port* %0, %struct.tcpm_port** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %18 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %19 = call i32 @tcpm_pd_select_pdo(%struct.tcpm_port* %18, i32* %16, i32* %15)
  store i32 %19, i32* %17, align 4
  %20 = load i32, i32* %17, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i32, i32* %17, align 4
  store i32 %23, i32* %3, align 4
  br label %181

24:                                               ; preds = %2
  %25 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %26 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %25, i32 0, i32 10
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %15, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %13, align 4
  %32 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %33 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %32, i32 0, i32 9
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %16, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %14, align 4
  %39 = load i32, i32* %13, align 4
  %40 = call i32 @pdo_type(i32 %39)
  store i32 %40, i32* %12, align 4
  %41 = load i32, i32* %12, align 4
  switch i32 %41, label %48 [
    i32 129, label %42
    i32 130, label %45
    i32 128, label %45
  ]

42:                                               ; preds = %24
  %43 = load i32, i32* %13, align 4
  %44 = call i32 @pdo_fixed_voltage(i32 %43)
  store i32 %44, i32* %6, align 4
  br label %53

45:                                               ; preds = %24, %24
  %46 = load i32, i32* %13, align 4
  %47 = call i32 @pdo_min_voltage(i32 %46)
  store i32 %47, i32* %6, align 4
  br label %53

48:                                               ; preds = %24
  %49 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %50 = call i32 (%struct.tcpm_port*, i8*, ...) @tcpm_log(%struct.tcpm_port* %49, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %181

53:                                               ; preds = %45, %42
  %54 = load i32, i32* %12, align 4
  %55 = icmp eq i32 %54, 130
  br i1 %55, label %56, label %64

56:                                               ; preds = %53
  %57 = load i32, i32* %13, align 4
  %58 = load i32, i32* %14, align 4
  %59 = call i32 @min_power(i32 %57, i32 %58)
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  %61 = mul i32 1000, %60
  %62 = load i32, i32* %6, align 4
  %63 = udiv i32 %61, %62
  store i32 %63, i32* %7, align 4
  br label %72

64:                                               ; preds = %53
  %65 = load i32, i32* %13, align 4
  %66 = load i32, i32* %14, align 4
  %67 = call i32 @min_current(i32 %65, i32 %66)
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* %6, align 4
  %70 = mul i32 %68, %69
  %71 = udiv i32 %70, 1000
  store i32 %71, i32* %8, align 4
  br label %72

72:                                               ; preds = %64, %56
  %73 = load i32, i32* @RDO_USB_COMM, align 4
  %74 = load i32, i32* @RDO_NO_SUSPEND, align 4
  %75 = or i32 %73, %74
  store i32 %75, i32* %9, align 4
  %76 = load i32, i32* %7, align 4
  store i32 %76, i32* %10, align 4
  %77 = load i32, i32* %8, align 4
  store i32 %77, i32* %11, align 4
  %78 = load i32, i32* %8, align 4
  %79 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %80 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = icmp ult i32 %78, %81
  br i1 %82, label %83, label %109

83:                                               ; preds = %72
  %84 = load i32, i32* @RDO_CAP_MISMATCH, align 4
  %85 = load i32, i32* %9, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %9, align 4
  %87 = load i32, i32* %12, align 4
  %88 = icmp eq i32 %87, 130
  br i1 %88, label %89, label %98

89:                                               ; preds = %83
  %90 = load i32, i32* %14, align 4
  %91 = call i32 @pdo_max_power(i32 %90)
  %92 = load i32, i32* %13, align 4
  %93 = call i32 @pdo_max_power(i32 %92)
  %94 = icmp ugt i32 %91, %93
  br i1 %94, label %95, label %98

95:                                               ; preds = %89
  %96 = load i32, i32* %14, align 4
  %97 = call i32 @pdo_max_power(i32 %96)
  store i32 %97, i32* %11, align 4
  br label %108

98:                                               ; preds = %89, %83
  %99 = load i32, i32* %14, align 4
  %100 = call i32 @pdo_max_current(i32 %99)
  %101 = load i32, i32* %13, align 4
  %102 = call i32 @pdo_max_current(i32 %101)
  %103 = icmp ugt i32 %100, %102
  br i1 %103, label %104, label %107

104:                                              ; preds = %98
  %105 = load i32, i32* %14, align 4
  %106 = call i32 @pdo_max_current(i32 %105)
  store i32 %106, i32* %10, align 4
  br label %107

107:                                              ; preds = %104, %98
  br label %108

108:                                              ; preds = %107, %95
  br label %109

109:                                              ; preds = %108, %72
  %110 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %111 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %112 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %111, i32 0, i32 8
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %115 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %114, i32 0, i32 7
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %118 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %117, i32 0, i32 6
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %121 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %120, i32 0, i32 5
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %124 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @TYPEC_SOURCE, align 8
  %127 = icmp eq i64 %125, %126
  %128 = zext i1 %127 to i64
  %129 = select i1 %127, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)
  %130 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %131 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %130, i32 0, i32 4
  %132 = load i32, i32* %131, align 8
  %133 = call i32 (%struct.tcpm_port*, i8*, ...) @tcpm_log(%struct.tcpm_port* %110, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %113, i32 %116, i32 %119, i32 %122, i8* %129, i32 %132)
  %134 = load i32, i32* %12, align 4
  %135 = icmp eq i32 %134, 130
  br i1 %135, label %136, label %155

136:                                              ; preds = %109
  %137 = load i32, i32* %15, align 4
  %138 = add nsw i32 %137, 1
  %139 = load i32, i32* %8, align 4
  %140 = load i32, i32* %11, align 4
  %141 = load i32, i32* %9, align 4
  %142 = call i32 @RDO_BATT(i32 %138, i32 %139, i32 %140, i32 %141)
  %143 = load i32*, i32** %5, align 8
  store i32 %142, i32* %143, align 4
  %144 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %145 = load i32, i32* %15, align 4
  %146 = load i32, i32* %6, align 4
  %147 = load i32, i32* %8, align 4
  %148 = load i32, i32* %9, align 4
  %149 = load i32, i32* @RDO_CAP_MISMATCH, align 4
  %150 = and i32 %148, %149
  %151 = icmp ne i32 %150, 0
  %152 = zext i1 %151 to i64
  %153 = select i1 %151, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)
  %154 = call i32 (%struct.tcpm_port*, i8*, ...) @tcpm_log(%struct.tcpm_port* %144, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 %145, i32 %146, i32 %147, i8* %153)
  br label %174

155:                                              ; preds = %109
  %156 = load i32, i32* %15, align 4
  %157 = add nsw i32 %156, 1
  %158 = load i32, i32* %7, align 4
  %159 = load i32, i32* %10, align 4
  %160 = load i32, i32* %9, align 4
  %161 = call i32 @RDO_FIXED(i32 %157, i32 %158, i32 %159, i32 %160)
  %162 = load i32*, i32** %5, align 8
  store i32 %161, i32* %162, align 4
  %163 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %164 = load i32, i32* %15, align 4
  %165 = load i32, i32* %6, align 4
  %166 = load i32, i32* %7, align 4
  %167 = load i32, i32* %9, align 4
  %168 = load i32, i32* @RDO_CAP_MISMATCH, align 4
  %169 = and i32 %167, %168
  %170 = icmp ne i32 %169, 0
  %171 = zext i1 %170 to i64
  %172 = select i1 %170, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)
  %173 = call i32 (%struct.tcpm_port*, i8*, ...) @tcpm_log(%struct.tcpm_port* %163, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0), i32 %164, i32 %165, i32 %166, i8* %172)
  br label %174

174:                                              ; preds = %155, %136
  %175 = load i32, i32* %7, align 4
  %176 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %177 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %176, i32 0, i32 2
  store i32 %175, i32* %177, align 8
  %178 = load i32, i32* %6, align 4
  %179 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %180 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %179, i32 0, i32 3
  store i32 %178, i32* %180, align 4
  store i32 0, i32* %3, align 4
  br label %181

181:                                              ; preds = %174, %48, %22
  %182 = load i32, i32* %3, align 4
  ret i32 %182
}

declare dso_local i32 @tcpm_pd_select_pdo(%struct.tcpm_port*, i32*, i32*) #1

declare dso_local i32 @pdo_type(i32) #1

declare dso_local i32 @pdo_fixed_voltage(i32) #1

declare dso_local i32 @pdo_min_voltage(i32) #1

declare dso_local i32 @tcpm_log(%struct.tcpm_port*, i8*, ...) #1

declare dso_local i32 @min_power(i32, i32) #1

declare dso_local i32 @min_current(i32, i32) #1

declare dso_local i32 @pdo_max_power(i32) #1

declare dso_local i32 @pdo_max_current(i32) #1

declare dso_local i32 @RDO_BATT(i32, i32, i32, i32) #1

declare dso_local i32 @RDO_FIXED(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
