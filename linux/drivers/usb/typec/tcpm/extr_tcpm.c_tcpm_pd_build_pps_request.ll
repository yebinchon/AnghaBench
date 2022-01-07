; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_tcpm.c_tcpm_pd_build_pps_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_tcpm.c_tcpm_pd_build_pps_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpm_port = type { i32, i64, %struct.TYPE_2__, i32, i32, i32, i32, i32, i32* }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@APDO_TYPE_PPS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Invalid APDO selected!\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Invalid PDO selected!\00", align 1
@RDO_USB_COMM = common dso_local global i32 0, align 4
@RDO_NO_SUSPEND = common dso_local global i32 0, align 4
@RDO_PROG_CURR_MA_STEP = common dso_local global i32 0, align 4
@RDO_PROG_VOLT_MV_STEP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"Invalid PPS APDO selected!\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"cc=%d cc1=%d cc2=%d vbus=%d vconn=%s polarity=%d\00", align 1
@TYPEC_SOURCE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [7 x i8] c"source\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"sink\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"Requesting APDO %d: %u mV, %u mA\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcpm_port*, i32*)* @tcpm_pd_build_pps_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcpm_pd_build_pps_request(%struct.tcpm_port* %0, i32* %1) #0 {
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
  store %struct.tcpm_port* %0, %struct.tcpm_port** %4, align 8
  store i32* %1, i32** %5, align 8
  %15 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %16 = call i32 @tcpm_pd_select_pps_apdo(%struct.tcpm_port* %15)
  store i32 %16, i32* %13, align 4
  %17 = load i32, i32* %13, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @EOPNOTSUPP, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %187

22:                                               ; preds = %2
  %23 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %24 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %23, i32 0, i32 8
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %13, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %14, align 4
  %30 = load i32, i32* %14, align 4
  %31 = call i32 @pdo_type(i32 %30)
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %12, align 4
  switch i32 %32, label %60 [
    i32 128, label %33
  ]

33:                                               ; preds = %22
  %34 = load i32, i32* %14, align 4
  %35 = call i32 @pdo_apdo_type(i32 %34)
  %36 = load i32, i32* @APDO_TYPE_PPS, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %40 = call i32 (%struct.tcpm_port*, i8*, ...) @tcpm_log(%struct.tcpm_port* %39, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %187

43:                                               ; preds = %33
  %44 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %45 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  store i32 %47, i32* %9, align 4
  %48 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %49 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %10, align 4
  %52 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %53 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  store i32 %55, i32* %6, align 4
  %56 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %57 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %7, align 4
  br label %65

60:                                               ; preds = %22
  %61 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %62 = call i32 (%struct.tcpm_port*, i8*, ...) @tcpm_log(%struct.tcpm_port* %61, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %3, align 4
  br label %187

65:                                               ; preds = %43
  %66 = load i32, i32* @RDO_USB_COMM, align 4
  %67 = load i32, i32* @RDO_NO_SUSPEND, align 4
  %68 = or i32 %66, %67
  store i32 %68, i32* %11, align 4
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* %6, align 4
  %71 = mul i32 %69, %70
  %72 = udiv i32 %71, 1000
  store i32 %72, i32* %8, align 4
  %73 = load i32, i32* %8, align 4
  %74 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %75 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp ult i32 %73, %76
  br i1 %77, label %78, label %142

78:                                               ; preds = %65
  %79 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %80 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = mul i32 %81, 1000
  %83 = load i32, i32* %6, align 4
  %84 = udiv i32 %82, %83
  store i32 %84, i32* %7, align 4
  %85 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %86 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = mul i32 %87, 1000
  %89 = load i32, i32* %6, align 4
  %90 = urem i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %78
  %93 = load i32, i32* %7, align 4
  %94 = add i32 %93, 1
  store i32 %94, i32* %7, align 4
  br label %95

95:                                               ; preds = %92, %78
  %96 = load i32, i32* @RDO_PROG_CURR_MA_STEP, align 4
  %97 = load i32, i32* %7, align 4
  %98 = load i32, i32* @RDO_PROG_CURR_MA_STEP, align 4
  %99 = urem i32 %97, %98
  %100 = sub i32 %96, %99
  %101 = load i32, i32* %7, align 4
  %102 = add i32 %101, %100
  store i32 %102, i32* %7, align 4
  %103 = load i32, i32* %7, align 4
  %104 = load i32, i32* %10, align 4
  %105 = icmp ugt i32 %103, %104
  br i1 %105, label %106, label %141

106:                                              ; preds = %95
  %107 = load i32, i32* %10, align 4
  store i32 %107, i32* %7, align 4
  %108 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %109 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = mul i32 %110, 1000
  %112 = load i32, i32* %7, align 4
  %113 = udiv i32 %111, %112
  store i32 %113, i32* %6, align 4
  %114 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %115 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = mul i32 %116, 1000
  %118 = load i32, i32* %7, align 4
  %119 = urem i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %106
  %122 = load i32, i32* %6, align 4
  %123 = add i32 %122, 1
  store i32 %123, i32* %6, align 4
  br label %124

124:                                              ; preds = %121, %106
  %125 = load i32, i32* @RDO_PROG_VOLT_MV_STEP, align 4
  %126 = load i32, i32* %6, align 4
  %127 = load i32, i32* @RDO_PROG_VOLT_MV_STEP, align 4
  %128 = urem i32 %126, %127
  %129 = sub i32 %125, %128
  %130 = load i32, i32* %6, align 4
  %131 = add i32 %130, %129
  store i32 %131, i32* %6, align 4
  %132 = load i32, i32* %6, align 4
  %133 = load i32, i32* %9, align 4
  %134 = icmp ugt i32 %132, %133
  br i1 %134, label %135, label %140

135:                                              ; preds = %124
  %136 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %137 = call i32 (%struct.tcpm_port*, i8*, ...) @tcpm_log(%struct.tcpm_port* %136, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %138 = load i32, i32* @EINVAL, align 4
  %139 = sub nsw i32 0, %138
  store i32 %139, i32* %3, align 4
  br label %187

140:                                              ; preds = %124
  br label %141

141:                                              ; preds = %140, %95
  br label %142

142:                                              ; preds = %141, %65
  %143 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %144 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %145 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %144, i32 0, i32 7
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %148 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %147, i32 0, i32 6
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %151 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %150, i32 0, i32 5
  %152 = load i32, i32* %151, align 8
  %153 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %154 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %153, i32 0, i32 4
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %157 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %156, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  %159 = load i64, i64* @TYPEC_SOURCE, align 8
  %160 = icmp eq i64 %158, %159
  %161 = zext i1 %160 to i64
  %162 = select i1 %160, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0)
  %163 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %164 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %163, i32 0, i32 3
  %165 = load i32, i32* %164, align 8
  %166 = call i32 (%struct.tcpm_port*, i8*, ...) @tcpm_log(%struct.tcpm_port* %143, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i32 %146, i32 %149, i32 %152, i32 %155, i8* %162, i32 %165)
  %167 = load i32, i32* %13, align 4
  %168 = add i32 %167, 1
  %169 = load i32, i32* %6, align 4
  %170 = load i32, i32* %7, align 4
  %171 = load i32, i32* %11, align 4
  %172 = call i32 @RDO_PROG(i32 %168, i32 %169, i32 %170, i32 %171)
  %173 = load i32*, i32** %5, align 8
  store i32 %172, i32* %173, align 4
  %174 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %175 = load i32, i32* %13, align 4
  %176 = load i32, i32* %6, align 4
  %177 = load i32, i32* %7, align 4
  %178 = call i32 (%struct.tcpm_port*, i8*, ...) @tcpm_log(%struct.tcpm_port* %174, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i32 %175, i32 %176, i32 %177)
  %179 = load i32, i32* %7, align 4
  %180 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %181 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %180, i32 0, i32 2
  %182 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %181, i32 0, i32 3
  store i32 %179, i32* %182, align 4
  %183 = load i32, i32* %6, align 4
  %184 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %185 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %184, i32 0, i32 2
  %186 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %185, i32 0, i32 2
  store i32 %183, i32* %186, align 8
  store i32 0, i32* %3, align 4
  br label %187

187:                                              ; preds = %142, %135, %60, %38, %19
  %188 = load i32, i32* %3, align 4
  ret i32 %188
}

declare dso_local i32 @tcpm_pd_select_pps_apdo(%struct.tcpm_port*) #1

declare dso_local i32 @pdo_type(i32) #1

declare dso_local i32 @pdo_apdo_type(i32) #1

declare dso_local i32 @tcpm_log(%struct.tcpm_port*, i8*, ...) #1

declare dso_local i32 @RDO_PROG(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
