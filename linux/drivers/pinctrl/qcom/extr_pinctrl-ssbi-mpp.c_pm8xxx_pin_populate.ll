; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/qcom/extr_pinctrl-ssbi-mpp.c_pm8xxx_pin_populate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/qcom/extr_pinctrl-ssbi-mpp.c_pm8xxx_pin_populate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm8xxx_mpp = type { i32, i32 }
%struct.pm8xxx_pin_data = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32 }

@.str = private unnamed_addr constant [25 x i8] c"failed to read register\0A\00", align 1
@PM8XXX_MPP_DIGITAL = common dso_local global i8* null, align 8
@PM8XXX_MPP_ANALOG = common dso_local global i8* null, align 8
@PM8XXX_MPP_SINK = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pm8xxx_mpp*, %struct.pm8xxx_pin_data*)* @pm8xxx_pin_populate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm8xxx_pin_populate(%struct.pm8xxx_mpp* %0, %struct.pm8xxx_pin_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pm8xxx_mpp*, align 8
  %5 = alloca %struct.pm8xxx_pin_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.pm8xxx_mpp* %0, %struct.pm8xxx_mpp** %4, align 8
  store %struct.pm8xxx_pin_data* %1, %struct.pm8xxx_pin_data** %5, align 8
  %11 = load %struct.pm8xxx_mpp*, %struct.pm8xxx_mpp** %4, align 8
  %12 = getelementptr inbounds %struct.pm8xxx_mpp, %struct.pm8xxx_mpp* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %5, align 8
  %15 = getelementptr inbounds %struct.pm8xxx_pin_data, %struct.pm8xxx_pin_data* %14, i32 0, i32 12
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @regmap_read(i32 %13, i32 %16, i32* %6)
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %2
  %21 = load %struct.pm8xxx_mpp*, %struct.pm8xxx_mpp** %4, align 8
  %22 = getelementptr inbounds %struct.pm8xxx_mpp, %struct.pm8xxx_mpp* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @dev_err(i32 %23, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* %10, align 4
  store i32 %25, i32* %3, align 4
  br label %191

26:                                               ; preds = %2
  %27 = load i32, i32* %6, align 4
  %28 = lshr i32 %27, 5
  %29 = and i32 %28, 7
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %6, align 4
  %31 = lshr i32 %30, 2
  %32 = and i32 %31, 7
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %6, align 4
  %34 = and i32 %33, 3
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %9, align 4
  switch i32 %35, label %190 [
    i32 130, label %36
    i32 129, label %48
    i32 131, label %75
    i32 135, label %100
    i32 134, label %109
    i32 128, label %136
    i32 132, label %163
    i32 133, label %176
  ]

36:                                               ; preds = %26
  %37 = load i8*, i8** @PM8XXX_MPP_DIGITAL, align 8
  %38 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %5, align 8
  %39 = getelementptr inbounds %struct.pm8xxx_pin_data, %struct.pm8xxx_pin_data* %38, i32 0, i32 11
  store i8* %37, i8** %39, align 8
  %40 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %5, align 8
  %41 = getelementptr inbounds %struct.pm8xxx_pin_data, %struct.pm8xxx_pin_data* %40, i32 0, i32 0
  store i32 1, i32* %41, align 8
  %42 = load i32, i32* %7, align 4
  %43 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %5, align 8
  %44 = getelementptr inbounds %struct.pm8xxx_pin_data, %struct.pm8xxx_pin_data* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* %8, align 4
  %46 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %5, align 8
  %47 = getelementptr inbounds %struct.pm8xxx_pin_data, %struct.pm8xxx_pin_data* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 8
  br label %190

48:                                               ; preds = %26
  %49 = load i8*, i8** @PM8XXX_MPP_DIGITAL, align 8
  %50 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %5, align 8
  %51 = getelementptr inbounds %struct.pm8xxx_pin_data, %struct.pm8xxx_pin_data* %50, i32 0, i32 11
  store i8* %49, i8** %51, align 8
  %52 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %5, align 8
  %53 = getelementptr inbounds %struct.pm8xxx_pin_data, %struct.pm8xxx_pin_data* %52, i32 0, i32 3
  store i32 1, i32* %53, align 4
  %54 = load i32, i32* %7, align 4
  %55 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %5, align 8
  %56 = getelementptr inbounds %struct.pm8xxx_pin_data, %struct.pm8xxx_pin_data* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @BIT(i32 0)
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  %61 = xor i1 %60, true
  %62 = xor i1 %61, true
  %63 = zext i1 %62 to i32
  %64 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %5, align 8
  %65 = getelementptr inbounds %struct.pm8xxx_pin_data, %struct.pm8xxx_pin_data* %64, i32 0, i32 4
  store i32 %63, i32* %65, align 8
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @BIT(i32 1)
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  %70 = xor i1 %69, true
  %71 = xor i1 %70, true
  %72 = zext i1 %71 to i32
  %73 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %5, align 8
  %74 = getelementptr inbounds %struct.pm8xxx_pin_data, %struct.pm8xxx_pin_data* %73, i32 0, i32 5
  store i32 %72, i32* %74, align 4
  br label %190

75:                                               ; preds = %26
  %76 = load i8*, i8** @PM8XXX_MPP_DIGITAL, align 8
  %77 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %5, align 8
  %78 = getelementptr inbounds %struct.pm8xxx_pin_data, %struct.pm8xxx_pin_data* %77, i32 0, i32 11
  store i8* %76, i8** %78, align 8
  %79 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %5, align 8
  %80 = getelementptr inbounds %struct.pm8xxx_pin_data, %struct.pm8xxx_pin_data* %79, i32 0, i32 0
  store i32 1, i32* %80, align 8
  %81 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %5, align 8
  %82 = getelementptr inbounds %struct.pm8xxx_pin_data, %struct.pm8xxx_pin_data* %81, i32 0, i32 3
  store i32 1, i32* %82, align 4
  %83 = load i32, i32* %7, align 4
  %84 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %5, align 8
  %85 = getelementptr inbounds %struct.pm8xxx_pin_data, %struct.pm8xxx_pin_data* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 4
  %86 = load i32, i32* %8, align 4
  switch i32 %86, label %99 [
    i32 138, label %87
    i32 136, label %90
    i32 139, label %93
    i32 137, label %96
  ]

87:                                               ; preds = %75
  %88 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %5, align 8
  %89 = getelementptr inbounds %struct.pm8xxx_pin_data, %struct.pm8xxx_pin_data* %88, i32 0, i32 6
  store i32 600, i32* %89, align 8
  br label %99

90:                                               ; preds = %75
  %91 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %5, align 8
  %92 = getelementptr inbounds %struct.pm8xxx_pin_data, %struct.pm8xxx_pin_data* %91, i32 0, i32 7
  store i32 1, i32* %92, align 4
  br label %99

93:                                               ; preds = %75
  %94 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %5, align 8
  %95 = getelementptr inbounds %struct.pm8xxx_pin_data, %struct.pm8xxx_pin_data* %94, i32 0, i32 6
  store i32 10000, i32* %95, align 8
  br label %99

96:                                               ; preds = %75
  %97 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %5, align 8
  %98 = getelementptr inbounds %struct.pm8xxx_pin_data, %struct.pm8xxx_pin_data* %97, i32 0, i32 6
  store i32 30000, i32* %98, align 8
  br label %99

99:                                               ; preds = %75, %96, %93, %90, %87
  br label %190

100:                                              ; preds = %26
  %101 = load i8*, i8** @PM8XXX_MPP_ANALOG, align 8
  %102 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %5, align 8
  %103 = getelementptr inbounds %struct.pm8xxx_pin_data, %struct.pm8xxx_pin_data* %102, i32 0, i32 11
  store i8* %101, i8** %103, align 8
  %104 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %5, align 8
  %105 = getelementptr inbounds %struct.pm8xxx_pin_data, %struct.pm8xxx_pin_data* %104, i32 0, i32 0
  store i32 1, i32* %105, align 8
  %106 = load i32, i32* %7, align 4
  %107 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %5, align 8
  %108 = getelementptr inbounds %struct.pm8xxx_pin_data, %struct.pm8xxx_pin_data* %107, i32 0, i32 8
  store i32 %106, i32* %108, align 8
  br label %190

109:                                              ; preds = %26
  %110 = load i8*, i8** @PM8XXX_MPP_ANALOG, align 8
  %111 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %5, align 8
  %112 = getelementptr inbounds %struct.pm8xxx_pin_data, %struct.pm8xxx_pin_data* %111, i32 0, i32 11
  store i8* %110, i8** %112, align 8
  %113 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %5, align 8
  %114 = getelementptr inbounds %struct.pm8xxx_pin_data, %struct.pm8xxx_pin_data* %113, i32 0, i32 3
  store i32 1, i32* %114, align 4
  %115 = load i32, i32* %7, align 4
  %116 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %5, align 8
  %117 = getelementptr inbounds %struct.pm8xxx_pin_data, %struct.pm8xxx_pin_data* %116, i32 0, i32 9
  store i32 %115, i32* %117, align 4
  %118 = load i32, i32* %8, align 4
  %119 = call i32 @BIT(i32 0)
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  %122 = xor i1 %121, true
  %123 = xor i1 %122, true
  %124 = zext i1 %123 to i32
  %125 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %5, align 8
  %126 = getelementptr inbounds %struct.pm8xxx_pin_data, %struct.pm8xxx_pin_data* %125, i32 0, i32 4
  store i32 %124, i32* %126, align 8
  %127 = load i32, i32* %8, align 4
  %128 = call i32 @BIT(i32 1)
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  %131 = xor i1 %130, true
  %132 = xor i1 %131, true
  %133 = zext i1 %132 to i32
  %134 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %5, align 8
  %135 = getelementptr inbounds %struct.pm8xxx_pin_data, %struct.pm8xxx_pin_data* %134, i32 0, i32 5
  store i32 %133, i32* %135, align 4
  br label %190

136:                                              ; preds = %26
  %137 = load i8*, i8** @PM8XXX_MPP_SINK, align 8
  %138 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %5, align 8
  %139 = getelementptr inbounds %struct.pm8xxx_pin_data, %struct.pm8xxx_pin_data* %138, i32 0, i32 11
  store i8* %137, i8** %139, align 8
  %140 = load i32, i32* %7, align 4
  %141 = add i32 %140, 1
  %142 = mul i32 5, %141
  %143 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %5, align 8
  %144 = getelementptr inbounds %struct.pm8xxx_pin_data, %struct.pm8xxx_pin_data* %143, i32 0, i32 10
  store i32 %142, i32* %144, align 8
  %145 = load i32, i32* %8, align 4
  %146 = call i32 @BIT(i32 0)
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  %149 = xor i1 %148, true
  %150 = xor i1 %149, true
  %151 = zext i1 %150 to i32
  %152 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %5, align 8
  %153 = getelementptr inbounds %struct.pm8xxx_pin_data, %struct.pm8xxx_pin_data* %152, i32 0, i32 4
  store i32 %151, i32* %153, align 8
  %154 = load i32, i32* %8, align 4
  %155 = call i32 @BIT(i32 1)
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  %158 = xor i1 %157, true
  %159 = xor i1 %158, true
  %160 = zext i1 %159 to i32
  %161 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %5, align 8
  %162 = getelementptr inbounds %struct.pm8xxx_pin_data, %struct.pm8xxx_pin_data* %161, i32 0, i32 5
  store i32 %160, i32* %162, align 4
  br label %190

163:                                              ; preds = %26
  %164 = load i8*, i8** @PM8XXX_MPP_SINK, align 8
  %165 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %5, align 8
  %166 = getelementptr inbounds %struct.pm8xxx_pin_data, %struct.pm8xxx_pin_data* %165, i32 0, i32 11
  store i8* %164, i8** %166, align 8
  %167 = load i32, i32* %8, align 4
  %168 = add i32 %167, 1
  %169 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %5, align 8
  %170 = getelementptr inbounds %struct.pm8xxx_pin_data, %struct.pm8xxx_pin_data* %169, i32 0, i32 2
  store i32 %168, i32* %170, align 8
  %171 = load i32, i32* %7, align 4
  %172 = add i32 %171, 1
  %173 = mul i32 5, %172
  %174 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %5, align 8
  %175 = getelementptr inbounds %struct.pm8xxx_pin_data, %struct.pm8xxx_pin_data* %174, i32 0, i32 10
  store i32 %173, i32* %175, align 8
  br label %190

176:                                              ; preds = %26
  %177 = load i8*, i8** @PM8XXX_MPP_DIGITAL, align 8
  %178 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %5, align 8
  %179 = getelementptr inbounds %struct.pm8xxx_pin_data, %struct.pm8xxx_pin_data* %178, i32 0, i32 11
  store i8* %177, i8** %179, align 8
  %180 = load i32, i32* %7, align 4
  %181 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %5, align 8
  %182 = getelementptr inbounds %struct.pm8xxx_pin_data, %struct.pm8xxx_pin_data* %181, i32 0, i32 1
  store i32 %180, i32* %182, align 4
  %183 = load i32, i32* %8, align 4
  %184 = icmp uge i32 %183, 1
  br i1 %184, label %185, label %189

185:                                              ; preds = %176
  %186 = load i32, i32* %8, align 4
  %187 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %5, align 8
  %188 = getelementptr inbounds %struct.pm8xxx_pin_data, %struct.pm8xxx_pin_data* %187, i32 0, i32 2
  store i32 %186, i32* %188, align 8
  br label %189

189:                                              ; preds = %185, %176
  br label %190

190:                                              ; preds = %26, %189, %163, %136, %109, %100, %99, %48, %36
  store i32 0, i32* %3, align 4
  br label %191

191:                                              ; preds = %190, %20
  %192 = load i32, i32* %3, align 4
  ret i32 %192
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
