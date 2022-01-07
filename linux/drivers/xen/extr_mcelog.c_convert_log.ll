; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/extr_mcelog.c_convert_log.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/extr_mcelog.c_convert_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, %struct.TYPE_3__*, i64, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.mc_info = type { i32 }
%struct.mcinfo_common = type { i64, i64 }
%struct.mcinfo_global = type { i64, i32 }
%struct.mcinfo_bank = type { i32, i32, i32, i32, i32 }
%struct.xen_mce = type { i64, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32 }

@MC_TYPE_GLOBAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"Failed to find global error info\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@ncpus = common dso_local global i64 0, align 8
@g_physinfo = common dso_local global %struct.TYPE_4__* null, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"Failed to match cpu with apicid %d\0A\00", align 1
@__MC_MSR_MCGCAP = common dso_local global i64 0, align 8
@MC_TYPE_BANK = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [30 x i8] c"Fail to find bank error info\0A\00", align 1
@MC_TYPE_EXTENDED = common dso_local global i64 0, align 8
@MC_TYPE_RECOVERY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mc_info*)* @convert_log to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @convert_log(%struct.mc_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mc_info*, align 8
  %4 = alloca %struct.mcinfo_common*, align 8
  %5 = alloca %struct.mcinfo_global*, align 8
  %6 = alloca %struct.mcinfo_bank*, align 8
  %7 = alloca %struct.xen_mce, align 8
  %8 = alloca i64, align 8
  store %struct.mc_info* %0, %struct.mc_info** %3, align 8
  store %struct.mcinfo_common* null, %struct.mcinfo_common** %4, align 8
  %9 = load %struct.mc_info*, %struct.mc_info** %3, align 8
  %10 = load i64, i64* @MC_TYPE_GLOBAL, align 8
  %11 = call i32 @x86_mcinfo_lookup(%struct.mcinfo_common** %4, %struct.mc_info* %9, i64 %10)
  %12 = load %struct.mcinfo_common*, %struct.mcinfo_common** %4, align 8
  %13 = icmp ne %struct.mcinfo_common* %12, null
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i64 @unlikely(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %1
  %19 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @ENODEV, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %178

22:                                               ; preds = %1
  %23 = call i32 @memset(%struct.xen_mce* %7, i32 0, i32 64)
  %24 = load %struct.mcinfo_common*, %struct.mcinfo_common** %4, align 8
  %25 = bitcast %struct.mcinfo_common* %24 to %struct.mcinfo_global*
  store %struct.mcinfo_global* %25, %struct.mcinfo_global** %5, align 8
  %26 = load %struct.mcinfo_global*, %struct.mcinfo_global** %5, align 8
  %27 = getelementptr inbounds %struct.mcinfo_global, %struct.mcinfo_global* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = getelementptr inbounds %struct.xen_mce, %struct.xen_mce* %7, i32 0, i32 12
  store i32 %28, i32* %29, align 4
  %30 = load %struct.mcinfo_global*, %struct.mcinfo_global** %5, align 8
  %31 = getelementptr inbounds %struct.mcinfo_global, %struct.mcinfo_global* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds %struct.xen_mce, %struct.xen_mce* %7, i32 0, i32 0
  store i64 %32, i64* %33, align 8
  store i64 0, i64* %8, align 8
  br label %34

34:                                               ; preds = %49, %22
  %35 = load i64, i64* %8, align 8
  %36 = load i64, i64* @ncpus, align 8
  %37 = icmp ult i64 %35, %36
  br i1 %37, label %38, label %52

38:                                               ; preds = %34
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g_physinfo, align 8
  %40 = load i64, i64* %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds %struct.xen_mce, %struct.xen_mce* %7, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp eq i64 %43, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %38
  br label %52

48:                                               ; preds = %38
  br label %49

49:                                               ; preds = %48
  %50 = load i64, i64* %8, align 8
  %51 = add i64 %50, 1
  store i64 %51, i64* %8, align 8
  br label %34

52:                                               ; preds = %47, %34
  %53 = load i64, i64* %8, align 8
  %54 = load i64, i64* @ncpus, align 8
  %55 = icmp eq i64 %53, %54
  %56 = zext i1 %55 to i32
  %57 = call i64 @unlikely(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %52
  %60 = getelementptr inbounds %struct.xen_mce, %struct.xen_mce* %7, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i64 %61)
  %63 = load i32, i32* @ENODEV, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %2, align 4
  br label %178

65:                                               ; preds = %52
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g_physinfo, align 8
  %67 = load i64, i64* %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 4
  %71 = getelementptr inbounds %struct.xen_mce, %struct.xen_mce* %7, i32 0, i32 11
  store i32 %70, i32* %71, align 8
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g_physinfo, align 8
  %73 = load i64, i64* %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 8
  %77 = getelementptr inbounds %struct.xen_mce, %struct.xen_mce* %7, i32 0, i32 9
  store i32 %76, i32* %77, align 8
  %78 = getelementptr inbounds %struct.xen_mce, %struct.xen_mce* %7, i32 0, i32 10
  store i32 %76, i32* %78, align 4
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g_physinfo, align 8
  %80 = load i64, i64* %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = getelementptr inbounds %struct.xen_mce, %struct.xen_mce* %7, i32 0, i32 8
  store i64 %83, i64* %84, align 8
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g_physinfo, align 8
  %86 = load i64, i64* %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 1
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %88, align 8
  %90 = load i64, i64* @__MC_MSR_MCGCAP, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = getelementptr inbounds %struct.xen_mce, %struct.xen_mce* %7, i32 0, i32 7
  store i32 %93, i32* %94, align 8
  store %struct.mcinfo_common* null, %struct.mcinfo_common** %4, align 8
  %95 = load %struct.mc_info*, %struct.mc_info** %3, align 8
  %96 = load i64, i64* @MC_TYPE_BANK, align 8
  %97 = call i32 @x86_mcinfo_lookup(%struct.mcinfo_common** %4, %struct.mc_info* %95, i64 %96)
  %98 = load %struct.mcinfo_common*, %struct.mcinfo_common** %4, align 8
  %99 = icmp ne %struct.mcinfo_common* %98, null
  %100 = xor i1 %99, true
  %101 = zext i1 %100 to i32
  %102 = call i64 @unlikely(i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %65
  %105 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %106 = load i32, i32* @ENODEV, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %2, align 4
  br label %178

108:                                              ; preds = %65
  br label %109

109:                                              ; preds = %176, %108
  %110 = load %struct.mcinfo_common*, %struct.mcinfo_common** %4, align 8
  %111 = icmp ne %struct.mcinfo_common* %110, null
  br i1 %111, label %112, label %141

112:                                              ; preds = %109
  %113 = load %struct.mcinfo_common*, %struct.mcinfo_common** %4, align 8
  %114 = getelementptr inbounds %struct.mcinfo_common, %struct.mcinfo_common* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = icmp eq i64 %115, 0
  br i1 %116, label %141, label %117

117:                                              ; preds = %112
  %118 = load %struct.mcinfo_common*, %struct.mcinfo_common** %4, align 8
  %119 = getelementptr inbounds %struct.mcinfo_common, %struct.mcinfo_common* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @MC_TYPE_GLOBAL, align 8
  %122 = icmp ne i64 %120, %121
  br i1 %122, label %123, label %142

123:                                              ; preds = %117
  %124 = load %struct.mcinfo_common*, %struct.mcinfo_common** %4, align 8
  %125 = getelementptr inbounds %struct.mcinfo_common, %struct.mcinfo_common* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @MC_TYPE_BANK, align 8
  %128 = icmp ne i64 %126, %127
  br i1 %128, label %129, label %142

129:                                              ; preds = %123
  %130 = load %struct.mcinfo_common*, %struct.mcinfo_common** %4, align 8
  %131 = getelementptr inbounds %struct.mcinfo_common, %struct.mcinfo_common* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @MC_TYPE_EXTENDED, align 8
  %134 = icmp ne i64 %132, %133
  br i1 %134, label %135, label %142

135:                                              ; preds = %129
  %136 = load %struct.mcinfo_common*, %struct.mcinfo_common** %4, align 8
  %137 = getelementptr inbounds %struct.mcinfo_common, %struct.mcinfo_common* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @MC_TYPE_RECOVERY, align 8
  %140 = icmp ne i64 %138, %139
  br i1 %140, label %141, label %142

141:                                              ; preds = %135, %112, %109
  br label %177

142:                                              ; preds = %135, %129, %123, %117
  %143 = load %struct.mcinfo_common*, %struct.mcinfo_common** %4, align 8
  %144 = getelementptr inbounds %struct.mcinfo_common, %struct.mcinfo_common* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @MC_TYPE_BANK, align 8
  %147 = icmp eq i64 %145, %146
  br i1 %147, label %148, label %173

148:                                              ; preds = %142
  %149 = load %struct.mcinfo_common*, %struct.mcinfo_common** %4, align 8
  %150 = bitcast %struct.mcinfo_common* %149 to %struct.mcinfo_bank*
  store %struct.mcinfo_bank* %150, %struct.mcinfo_bank** %6, align 8
  %151 = load %struct.mcinfo_bank*, %struct.mcinfo_bank** %6, align 8
  %152 = getelementptr inbounds %struct.mcinfo_bank, %struct.mcinfo_bank* %151, i32 0, i32 4
  %153 = load i32, i32* %152, align 4
  %154 = getelementptr inbounds %struct.xen_mce, %struct.xen_mce* %7, i32 0, i32 6
  store i32 %153, i32* %154, align 4
  %155 = load %struct.mcinfo_bank*, %struct.mcinfo_bank** %6, align 8
  %156 = getelementptr inbounds %struct.mcinfo_bank, %struct.mcinfo_bank* %155, i32 0, i32 3
  %157 = load i32, i32* %156, align 4
  %158 = getelementptr inbounds %struct.xen_mce, %struct.xen_mce* %7, i32 0, i32 5
  store i32 %157, i32* %158, align 8
  %159 = load %struct.mcinfo_bank*, %struct.mcinfo_bank** %6, align 8
  %160 = getelementptr inbounds %struct.mcinfo_bank, %struct.mcinfo_bank* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 4
  %162 = getelementptr inbounds %struct.xen_mce, %struct.xen_mce* %7, i32 0, i32 4
  store i32 %161, i32* %162, align 4
  %163 = load %struct.mcinfo_bank*, %struct.mcinfo_bank** %6, align 8
  %164 = getelementptr inbounds %struct.mcinfo_bank, %struct.mcinfo_bank* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = getelementptr inbounds %struct.xen_mce, %struct.xen_mce* %7, i32 0, i32 3
  store i32 %165, i32* %166, align 8
  %167 = load %struct.mcinfo_bank*, %struct.mcinfo_bank** %6, align 8
  %168 = getelementptr inbounds %struct.mcinfo_bank, %struct.mcinfo_bank* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = getelementptr inbounds %struct.xen_mce, %struct.xen_mce* %7, i32 0, i32 2
  store i32 %169, i32* %170, align 4
  %171 = getelementptr inbounds %struct.xen_mce, %struct.xen_mce* %7, i32 0, i32 1
  store i32 1, i32* %171, align 8
  %172 = call i32 @xen_mce_log(%struct.xen_mce* %7)
  br label %173

173:                                              ; preds = %148, %142
  %174 = load %struct.mcinfo_common*, %struct.mcinfo_common** %4, align 8
  %175 = call %struct.mcinfo_common* @x86_mcinfo_next(%struct.mcinfo_common* %174)
  store %struct.mcinfo_common* %175, %struct.mcinfo_common** %4, align 8
  br label %176

176:                                              ; preds = %173
  br i1 true, label %109, label %177

177:                                              ; preds = %176, %141
  store i32 0, i32* %2, align 4
  br label %178

178:                                              ; preds = %177, %104, %59, %18
  %179 = load i32, i32* %2, align 4
  ret i32 %179
}

declare dso_local i32 @x86_mcinfo_lookup(%struct.mcinfo_common**, %struct.mc_info*, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pr_warn(i8*, ...) #1

declare dso_local i32 @memset(%struct.xen_mce*, i32, i32) #1

declare dso_local i32 @xen_mce_log(%struct.xen_mce*) #1

declare dso_local %struct.mcinfo_common* @x86_mcinfo_next(%struct.mcinfo_common*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
