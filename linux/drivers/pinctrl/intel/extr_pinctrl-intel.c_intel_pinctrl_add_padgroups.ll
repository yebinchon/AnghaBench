; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/intel/extr_pinctrl-intel.c_intel_pinctrl_add_padgroups.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/intel/extr_pinctrl-intel.c_intel_pinctrl_add_padgroups.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_pinctrl = type { i32 }
%struct.intel_community = type { i32, i64, i32, %struct.intel_padgroup*, i64, i64 }
%struct.intel_padgroup = type { i64, i32, i32, i64, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_pinctrl*, %struct.intel_community*)* @intel_pinctrl_add_padgroups to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_pinctrl_add_padgroups(%struct.intel_pinctrl* %0, %struct.intel_community* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intel_pinctrl*, align 8
  %5 = alloca %struct.intel_community*, align 8
  %6 = alloca %struct.intel_padgroup*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.intel_pinctrl* %0, %struct.intel_pinctrl** %4, align 8
  store %struct.intel_community* %1, %struct.intel_community** %5, align 8
  %12 = load %struct.intel_community*, %struct.intel_community** %5, align 8
  %13 = getelementptr inbounds %struct.intel_community, %struct.intel_community* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %15 = load %struct.intel_community*, %struct.intel_community** %5, align 8
  %16 = getelementptr inbounds %struct.intel_community, %struct.intel_community* %15, i32 0, i32 3
  %17 = load %struct.intel_padgroup*, %struct.intel_padgroup** %16, align 8
  %18 = icmp ne %struct.intel_padgroup* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %2
  %20 = load %struct.intel_community*, %struct.intel_community** %5, align 8
  %21 = getelementptr inbounds %struct.intel_community, %struct.intel_community* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %9, align 8
  br label %31

23:                                               ; preds = %2
  %24 = load %struct.intel_community*, %struct.intel_community** %5, align 8
  %25 = getelementptr inbounds %struct.intel_community, %struct.intel_community* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.intel_community*, %struct.intel_community** %5, align 8
  %28 = getelementptr inbounds %struct.intel_community, %struct.intel_community* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = call i64 @DIV_ROUND_UP(i32 %26, i32 %29)
  store i64 %30, i64* %9, align 8
  br label %31

31:                                               ; preds = %23, %19
  %32 = load %struct.intel_pinctrl*, %struct.intel_pinctrl** %4, align 8
  %33 = getelementptr inbounds %struct.intel_pinctrl, %struct.intel_pinctrl* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i64, i64* %9, align 8
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call %struct.intel_padgroup* @devm_kcalloc(i32 %34, i64 %35, i32 32, i32 %36)
  store %struct.intel_padgroup* %37, %struct.intel_padgroup** %6, align 8
  %38 = load %struct.intel_padgroup*, %struct.intel_padgroup** %6, align 8
  %39 = icmp ne %struct.intel_padgroup* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %31
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %167

43:                                               ; preds = %31
  store i64 0, i64* %10, align 8
  br label %44

44:                                               ; preds = %157, %43
  %45 = load i64, i64* %10, align 8
  %46 = load i64, i64* %9, align 8
  %47 = icmp ult i64 %45, %46
  br i1 %47, label %48, label %160

48:                                               ; preds = %44
  %49 = load %struct.intel_community*, %struct.intel_community** %5, align 8
  %50 = getelementptr inbounds %struct.intel_community, %struct.intel_community* %49, i32 0, i32 3
  %51 = load %struct.intel_padgroup*, %struct.intel_padgroup** %50, align 8
  %52 = icmp ne %struct.intel_padgroup* %51, null
  br i1 %52, label %53, label %64

53:                                               ; preds = %48
  %54 = load %struct.intel_padgroup*, %struct.intel_padgroup** %6, align 8
  %55 = load i64, i64* %10, align 8
  %56 = getelementptr inbounds %struct.intel_padgroup, %struct.intel_padgroup* %54, i64 %55
  %57 = load %struct.intel_community*, %struct.intel_community** %5, align 8
  %58 = getelementptr inbounds %struct.intel_community, %struct.intel_community* %57, i32 0, i32 3
  %59 = load %struct.intel_padgroup*, %struct.intel_padgroup** %58, align 8
  %60 = load i64, i64* %10, align 8
  %61 = getelementptr inbounds %struct.intel_padgroup, %struct.intel_padgroup* %59, i64 %60
  %62 = bitcast %struct.intel_padgroup* %56 to i8*
  %63 = bitcast %struct.intel_padgroup* %61 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %62, i8* align 8 %63, i64 32, i1 false)
  br label %99

64:                                               ; preds = %48
  %65 = load %struct.intel_community*, %struct.intel_community** %5, align 8
  %66 = getelementptr inbounds %struct.intel_community, %struct.intel_community* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  store i32 %67, i32* %11, align 4
  %68 = load i64, i64* %10, align 8
  %69 = load %struct.intel_padgroup*, %struct.intel_padgroup** %6, align 8
  %70 = load i64, i64* %10, align 8
  %71 = getelementptr inbounds %struct.intel_padgroup, %struct.intel_padgroup* %69, i64 %70
  %72 = getelementptr inbounds %struct.intel_padgroup, %struct.intel_padgroup* %71, i32 0, i32 0
  store i64 %68, i64* %72, align 8
  %73 = load %struct.intel_community*, %struct.intel_community** %5, align 8
  %74 = getelementptr inbounds %struct.intel_community, %struct.intel_community* %73, i32 0, i32 5
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* %10, align 8
  %77 = load i32, i32* %11, align 4
  %78 = zext i32 %77 to i64
  %79 = mul i64 %76, %78
  %80 = add i64 %75, %79
  %81 = load %struct.intel_padgroup*, %struct.intel_padgroup** %6, align 8
  %82 = load i64, i64* %10, align 8
  %83 = getelementptr inbounds %struct.intel_padgroup, %struct.intel_padgroup* %81, i64 %82
  %84 = getelementptr inbounds %struct.intel_padgroup, %struct.intel_padgroup* %83, i32 0, i32 3
  store i64 %80, i64* %84, align 8
  %85 = load i32, i32* %11, align 4
  %86 = load i32, i32* %7, align 4
  %87 = call i32 @min(i32 %85, i32 %86)
  %88 = load %struct.intel_padgroup*, %struct.intel_padgroup** %6, align 8
  %89 = load i64, i64* %10, align 8
  %90 = getelementptr inbounds %struct.intel_padgroup, %struct.intel_padgroup* %88, i64 %89
  %91 = getelementptr inbounds %struct.intel_padgroup, %struct.intel_padgroup* %90, i32 0, i32 1
  store i32 %87, i32* %91, align 8
  %92 = load %struct.intel_padgroup*, %struct.intel_padgroup** %6, align 8
  %93 = load i64, i64* %10, align 8
  %94 = getelementptr inbounds %struct.intel_padgroup, %struct.intel_padgroup* %92, i64 %93
  %95 = getelementptr inbounds %struct.intel_padgroup, %struct.intel_padgroup* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* %7, align 4
  %98 = sub i32 %97, %96
  store i32 %98, i32* %7, align 4
  br label %99

99:                                               ; preds = %64, %53
  %100 = load %struct.intel_padgroup*, %struct.intel_padgroup** %6, align 8
  %101 = load i64, i64* %10, align 8
  %102 = getelementptr inbounds %struct.intel_padgroup, %struct.intel_padgroup* %100, i64 %101
  %103 = getelementptr inbounds %struct.intel_padgroup, %struct.intel_padgroup* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = icmp ugt i32 %104, 32
  br i1 %105, label %106, label %109

106:                                              ; preds = %99
  %107 = load i32, i32* @EINVAL, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %3, align 4
  br label %167

109:                                              ; preds = %99
  %110 = load %struct.intel_padgroup*, %struct.intel_padgroup** %6, align 8
  %111 = load i64, i64* %10, align 8
  %112 = getelementptr inbounds %struct.intel_padgroup, %struct.intel_padgroup* %110, i64 %111
  %113 = getelementptr inbounds %struct.intel_padgroup, %struct.intel_padgroup* %112, i32 0, i32 4
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %126, label %116

116:                                              ; preds = %109
  %117 = load %struct.intel_padgroup*, %struct.intel_padgroup** %6, align 8
  %118 = load i64, i64* %10, align 8
  %119 = getelementptr inbounds %struct.intel_padgroup, %struct.intel_padgroup* %117, i64 %118
  %120 = getelementptr inbounds %struct.intel_padgroup, %struct.intel_padgroup* %119, i32 0, i32 3
  %121 = load i64, i64* %120, align 8
  %122 = load %struct.intel_padgroup*, %struct.intel_padgroup** %6, align 8
  %123 = load i64, i64* %10, align 8
  %124 = getelementptr inbounds %struct.intel_padgroup, %struct.intel_padgroup* %122, i64 %123
  %125 = getelementptr inbounds %struct.intel_padgroup, %struct.intel_padgroup* %124, i32 0, i32 4
  store i64 %121, i64* %125, align 8
  br label %126

126:                                              ; preds = %116, %109
  %127 = load i32, i32* %8, align 4
  %128 = load %struct.intel_padgroup*, %struct.intel_padgroup** %6, align 8
  %129 = load i64, i64* %10, align 8
  %130 = getelementptr inbounds %struct.intel_padgroup, %struct.intel_padgroup* %128, i64 %129
  %131 = getelementptr inbounds %struct.intel_padgroup, %struct.intel_padgroup* %130, i32 0, i32 2
  store i32 %127, i32* %131, align 4
  %132 = load %struct.intel_community*, %struct.intel_community** %5, align 8
  %133 = getelementptr inbounds %struct.intel_community, %struct.intel_community* %132, i32 0, i32 4
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %144

136:                                              ; preds = %126
  %137 = load %struct.intel_community*, %struct.intel_community** %5, align 8
  %138 = getelementptr inbounds %struct.intel_community, %struct.intel_community* %137, i32 0, i32 4
  %139 = load i64, i64* %138, align 8
  %140 = load i32, i32* %8, align 4
  %141 = zext i32 %140 to i64
  %142 = add nsw i64 %141, %139
  %143 = trunc i64 %142 to i32
  store i32 %143, i32* %8, align 4
  br label %156

144:                                              ; preds = %126
  %145 = load %struct.intel_padgroup*, %struct.intel_padgroup** %6, align 8
  %146 = load i64, i64* %10, align 8
  %147 = getelementptr inbounds %struct.intel_padgroup, %struct.intel_padgroup* %145, i64 %146
  %148 = getelementptr inbounds %struct.intel_padgroup, %struct.intel_padgroup* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 8
  %150 = mul i32 %149, 4
  %151 = call i64 @DIV_ROUND_UP(i32 %150, i32 32)
  %152 = load i32, i32* %8, align 4
  %153 = zext i32 %152 to i64
  %154 = add i64 %153, %151
  %155 = trunc i64 %154 to i32
  store i32 %155, i32* %8, align 4
  br label %156

156:                                              ; preds = %144, %136
  br label %157

157:                                              ; preds = %156
  %158 = load i64, i64* %10, align 8
  %159 = add i64 %158, 1
  store i64 %159, i64* %10, align 8
  br label %44

160:                                              ; preds = %44
  %161 = load i64, i64* %9, align 8
  %162 = load %struct.intel_community*, %struct.intel_community** %5, align 8
  %163 = getelementptr inbounds %struct.intel_community, %struct.intel_community* %162, i32 0, i32 1
  store i64 %161, i64* %163, align 8
  %164 = load %struct.intel_padgroup*, %struct.intel_padgroup** %6, align 8
  %165 = load %struct.intel_community*, %struct.intel_community** %5, align 8
  %166 = getelementptr inbounds %struct.intel_community, %struct.intel_community* %165, i32 0, i32 3
  store %struct.intel_padgroup* %164, %struct.intel_padgroup** %166, align 8
  store i32 0, i32* %3, align 4
  br label %167

167:                                              ; preds = %160, %106, %40
  %168 = load i32, i32* %3, align 4
  ret i32 %168
}

declare dso_local i64 @DIV_ROUND_UP(i32, i32) #1

declare dso_local %struct.intel_padgroup* @devm_kcalloc(i32, i64, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
