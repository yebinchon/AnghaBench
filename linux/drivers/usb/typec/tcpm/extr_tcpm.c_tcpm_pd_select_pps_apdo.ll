; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_tcpm.c_tcpm_pd_select_pps_apdo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_tcpm.c_tcpm_pd_select_pps_apdo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpm_port = type { i32, i32, %struct.TYPE_2__, i32*, i32* }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }

@APDO_TYPE_PPS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Not PPS APDO (source), ignoring\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Not PPS APDO (sink), ignoring\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Not APDO type (sink), ignoring\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"Not APDO type (source), ignoring\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcpm_port*)* @tcpm_pd_select_pps_apdo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcpm_pd_select_pps_apdo(%struct.tcpm_port* %0) #0 {
  %2 = alloca %struct.tcpm_port*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
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
  %18 = alloca i32, align 4
  store %struct.tcpm_port* %0, %struct.tcpm_port** %2, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 1, i32* %3, align 4
  br label %19

19:                                               ; preds = %129, %1
  %20 = load i32, i32* %3, align 4
  %21 = load %struct.tcpm_port*, %struct.tcpm_port** %2, align 8
  %22 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ult i32 %20, %23
  br i1 %24, label %25, label %132

25:                                               ; preds = %19
  %26 = load %struct.tcpm_port*, %struct.tcpm_port** %2, align 8
  %27 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %26, i32 0, i32 4
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %3, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %14, align 4
  %33 = load i32, i32* %14, align 4
  %34 = call i32 @pdo_type(i32 %33)
  switch i32 %34, label %125 [
    i32 128, label %35
  ]

35:                                               ; preds = %25
  %36 = load i32, i32* %14, align 4
  %37 = call i32 @pdo_apdo_type(i32 %36)
  %38 = load i32, i32* @APDO_TYPE_PPS, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load %struct.tcpm_port*, %struct.tcpm_port** %2, align 8
  %42 = call i32 @tcpm_log(%struct.tcpm_port* %41, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %129

43:                                               ; preds = %35
  %44 = load i32, i32* %14, align 4
  %45 = call i32 @pdo_pps_apdo_min_voltage(i32 %44)
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %14, align 4
  %47 = call i32 @pdo_pps_apdo_max_voltage(i32 %46)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %14, align 4
  %49 = call i32 @pdo_pps_apdo_max_current(i32 %48)
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* %8, align 4
  %52 = mul i32 %50, %51
  %53 = udiv i32 %52, 1000
  store i32 %53, i32* %10, align 4
  store i32 1, i32* %4, align 4
  br label %54

54:                                               ; preds = %121, %43
  %55 = load i32, i32* %4, align 4
  %56 = load %struct.tcpm_port*, %struct.tcpm_port** %2, align 8
  %57 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = icmp ult i32 %55, %58
  br i1 %59, label %60, label %124

60:                                               ; preds = %54
  %61 = load %struct.tcpm_port*, %struct.tcpm_port** %2, align 8
  %62 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %61, i32 0, i32 3
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %4, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %14, align 4
  %68 = load i32, i32* %14, align 4
  %69 = call i32 @pdo_type(i32 %68)
  switch i32 %69, label %83 [
    i32 128, label %70
  ]

70:                                               ; preds = %60
  %71 = load i32, i32* %14, align 4
  %72 = call i32 @pdo_apdo_type(i32 %71)
  %73 = load i32, i32* @APDO_TYPE_PPS, align 4
  %74 = icmp ne i32 %72, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %70
  %76 = load %struct.tcpm_port*, %struct.tcpm_port** %2, align 8
  %77 = call i32 @tcpm_log(%struct.tcpm_port* %76, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %121

78:                                               ; preds = %70
  %79 = load i32, i32* %14, align 4
  %80 = call i32 @pdo_pps_apdo_min_voltage(i32 %79)
  store i32 %80, i32* %11, align 4
  %81 = load i32, i32* %14, align 4
  %82 = call i32 @pdo_pps_apdo_max_voltage(i32 %81)
  store i32 %82, i32* %12, align 4
  br label %86

83:                                               ; preds = %60
  %84 = load %struct.tcpm_port*, %struct.tcpm_port** %2, align 8
  %85 = call i32 @tcpm_log(%struct.tcpm_port* %84, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %121

86:                                               ; preds = %78
  %87 = load i32, i32* %7, align 4
  %88 = load i32, i32* %12, align 4
  %89 = icmp ule i32 %87, %88
  br i1 %89, label %90, label %120

90:                                               ; preds = %86
  %91 = load i32, i32* %8, align 4
  %92 = load i32, i32* %11, align 4
  %93 = icmp uge i32 %91, %92
  br i1 %93, label %94, label %120

94:                                               ; preds = %90
  %95 = load i32, i32* %8, align 4
  %96 = load i32, i32* %12, align 4
  %97 = call i8* @min(i32 %95, i32 %96)
  %98 = ptrtoint i8* %97 to i32
  store i32 %98, i32* %13, align 4
  %99 = load i32, i32* %13, align 4
  %100 = load i32, i32* %9, align 4
  %101 = mul i32 %99, %100
  %102 = udiv i32 %101, 1000
  store i32 %102, i32* %10, align 4
  %103 = load i32, i32* %10, align 4
  %104 = load i32, i32* %5, align 4
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %106, label %110

106:                                              ; preds = %94
  %107 = load i32, i32* %13, align 4
  %108 = load i32, i32* %6, align 4
  %109 = icmp ugt i32 %107, %108
  br i1 %109, label %114, label %110

110:                                              ; preds = %106, %94
  %111 = load i32, i32* %10, align 4
  %112 = load i32, i32* %5, align 4
  %113 = icmp ugt i32 %111, %112
  br i1 %113, label %114, label %119

114:                                              ; preds = %110, %106
  %115 = load i32, i32* %3, align 4
  store i32 %115, i32* %17, align 4
  %116 = load i32, i32* %4, align 4
  store i32 %116, i32* %18, align 4
  %117 = load i32, i32* %10, align 4
  store i32 %117, i32* %5, align 4
  %118 = load i32, i32* %13, align 4
  store i32 %118, i32* %6, align 4
  br label %119

119:                                              ; preds = %114, %110
  br label %120

120:                                              ; preds = %119, %90, %86
  br label %121

121:                                              ; preds = %120, %83, %75
  %122 = load i32, i32* %4, align 4
  %123 = add i32 %122, 1
  store i32 %123, i32* %4, align 4
  br label %54

124:                                              ; preds = %54
  br label %128

125:                                              ; preds = %25
  %126 = load %struct.tcpm_port*, %struct.tcpm_port** %2, align 8
  %127 = call i32 @tcpm_log(%struct.tcpm_port* %126, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  br label %129

128:                                              ; preds = %124
  br label %129

129:                                              ; preds = %128, %125, %40
  %130 = load i32, i32* %3, align 4
  %131 = add i32 %130, 1
  store i32 %131, i32* %3, align 4
  br label %19

132:                                              ; preds = %19
  %133 = load i32, i32* %17, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %204

135:                                              ; preds = %132
  %136 = load %struct.tcpm_port*, %struct.tcpm_port** %2, align 8
  %137 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %136, i32 0, i32 4
  %138 = load i32*, i32** %137, align 8
  %139 = load i32, i32* %17, align 4
  %140 = zext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %138, i64 %140
  %142 = load i32, i32* %141, align 4
  store i32 %142, i32* %15, align 4
  %143 = load %struct.tcpm_port*, %struct.tcpm_port** %2, align 8
  %144 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %143, i32 0, i32 3
  %145 = load i32*, i32** %144, align 8
  %146 = load i32, i32* %18, align 4
  %147 = zext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %145, i64 %147
  %149 = load i32, i32* %148, align 4
  store i32 %149, i32* %16, align 4
  %150 = load i32, i32* %15, align 4
  %151 = call i32 @pdo_pps_apdo_min_voltage(i32 %150)
  %152 = load i32, i32* %16, align 4
  %153 = call i32 @pdo_pps_apdo_min_voltage(i32 %152)
  %154 = call i32 @max(i32 %151, i32 %153)
  %155 = load %struct.tcpm_port*, %struct.tcpm_port** %2, align 8
  %156 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %155, i32 0, i32 2
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %156, i32 0, i32 0
  store i32 %154, i32* %157, align 8
  %158 = load i32, i32* %15, align 4
  %159 = call i32 @pdo_pps_apdo_max_voltage(i32 %158)
  %160 = load i32, i32* %16, align 4
  %161 = call i32 @pdo_pps_apdo_max_voltage(i32 %160)
  %162 = call i8* @min(i32 %159, i32 %161)
  %163 = ptrtoint i8* %162 to i32
  %164 = load %struct.tcpm_port*, %struct.tcpm_port** %2, align 8
  %165 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %164, i32 0, i32 2
  %166 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %165, i32 0, i32 1
  store i32 %163, i32* %166, align 4
  %167 = load i32, i32* %15, align 4
  %168 = load i32, i32* %16, align 4
  %169 = call i32 @min_pps_apdo_current(i32 %167, i32 %168)
  %170 = load %struct.tcpm_port*, %struct.tcpm_port** %2, align 8
  %171 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %170, i32 0, i32 2
  %172 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %171, i32 0, i32 2
  store i32 %169, i32* %172, align 8
  %173 = load %struct.tcpm_port*, %struct.tcpm_port** %2, align 8
  %174 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %173, i32 0, i32 2
  %175 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.tcpm_port*, %struct.tcpm_port** %2, align 8
  %178 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %177, i32 0, i32 2
  %179 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = load %struct.tcpm_port*, %struct.tcpm_port** %2, align 8
  %182 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %181, i32 0, i32 2
  %183 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %182, i32 0, i32 3
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @max(i32 %180, i32 %184)
  %186 = call i8* @min(i32 %176, i32 %185)
  %187 = ptrtoint i8* %186 to i32
  %188 = load %struct.tcpm_port*, %struct.tcpm_port** %2, align 8
  %189 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %188, i32 0, i32 2
  %190 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %189, i32 0, i32 3
  store i32 %187, i32* %190, align 4
  %191 = load %struct.tcpm_port*, %struct.tcpm_port** %2, align 8
  %192 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %191, i32 0, i32 2
  %193 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %192, i32 0, i32 2
  %194 = load i32, i32* %193, align 8
  %195 = load %struct.tcpm_port*, %struct.tcpm_port** %2, align 8
  %196 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %195, i32 0, i32 2
  %197 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %196, i32 0, i32 4
  %198 = load i32, i32* %197, align 8
  %199 = call i8* @min(i32 %194, i32 %198)
  %200 = ptrtoint i8* %199 to i32
  %201 = load %struct.tcpm_port*, %struct.tcpm_port** %2, align 8
  %202 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %201, i32 0, i32 2
  %203 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %202, i32 0, i32 4
  store i32 %200, i32* %203, align 8
  br label %204

204:                                              ; preds = %135, %132
  %205 = load i32, i32* %17, align 4
  ret i32 %205
}

declare dso_local i32 @pdo_type(i32) #1

declare dso_local i32 @pdo_apdo_type(i32) #1

declare dso_local i32 @tcpm_log(%struct.tcpm_port*, i8*) #1

declare dso_local i32 @pdo_pps_apdo_min_voltage(i32) #1

declare dso_local i32 @pdo_pps_apdo_max_voltage(i32) #1

declare dso_local i32 @pdo_pps_apdo_max_current(i32) #1

declare dso_local i8* @min(i32, i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @min_pps_apdo_current(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
