; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_switch.c_tb_switch_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_switch.c_tb_switch_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb_switch = type { i32, i32, i32, i32, %struct.tb_switch*, %struct.TYPE_6__, i32, %struct.tb_switch*, %struct.TYPE_5__, %struct.tb* }
%struct.TYPE_6__ = type { i32, i32*, i32*, %struct.device* }
%struct.TYPE_5__ = type { i32, i32, i32, i64, i32, i32 }
%struct.tb = type { i32, i32 }
%struct.device = type { i32 }

@TB_SWITCH_MAX_DEPTH = common dso_local global i32 0, align 4
@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@TB_CFG_SWITCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"current switch config:\0A\00", align 1
@TB_VSE_CAP_PLUG_EVENTS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"cannot find TB_VSE_CAP_PLUG_EVENTS aborting\0A\00", align 1
@TB_VSE_CAP_LINK_CONTROLLER = common dso_local global i32 0, align 4
@tb_bus_type = common dso_local global i32 0, align 4
@tb_switch_type = common dso_local global i32 0, align 4
@switch_groups = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"%u-%llx\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tb_switch* @tb_switch_alloc(%struct.tb* %0, %struct.device* %1, i32 %2) #0 {
  %4 = alloca %struct.tb_switch*, align 8
  %5 = alloca %struct.tb*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.tb_switch*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.tb* %0, %struct.tb** %5, align 8
  store %struct.device* %1, %struct.device** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @tb_route_length(i32 %13)
  store i32 %14, i32* %12, align 4
  %15 = load i32, i32* %12, align 4
  %16 = load i32, i32* @TB_SWITCH_MAX_DEPTH, align 4
  %17 = icmp sgt i32 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %3
  %19 = load i32, i32* @EADDRNOTAVAIL, align 4
  %20 = sub nsw i32 0, %19
  %21 = call %struct.tb_switch* @ERR_PTR(i32 %20)
  store %struct.tb_switch* %21, %struct.tb_switch** %4, align 8
  br label %197

22:                                               ; preds = %3
  %23 = load %struct.tb*, %struct.tb** %5, align 8
  %24 = getelementptr inbounds %struct.tb, %struct.tb* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @tb_cfg_get_upstream_port(i32 %25, i32 %26)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %22
  %31 = load i32, i32* %9, align 4
  %32 = call %struct.tb_switch* @ERR_PTR(i32 %31)
  store %struct.tb_switch* %32, %struct.tb_switch** %4, align 8
  br label %197

33:                                               ; preds = %22
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call %struct.tb_switch* @kzalloc(i32 112, i32 %34)
  store %struct.tb_switch* %35, %struct.tb_switch** %8, align 8
  %36 = load %struct.tb_switch*, %struct.tb_switch** %8, align 8
  %37 = icmp ne %struct.tb_switch* %36, null
  br i1 %37, label %42, label %38

38:                                               ; preds = %33
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  %41 = call %struct.tb_switch* @ERR_PTR(i32 %40)
  store %struct.tb_switch* %41, %struct.tb_switch** %4, align 8
  br label %197

42:                                               ; preds = %33
  %43 = load %struct.tb*, %struct.tb** %5, align 8
  %44 = load %struct.tb_switch*, %struct.tb_switch** %8, align 8
  %45 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %44, i32 0, i32 9
  store %struct.tb* %43, %struct.tb** %45, align 8
  %46 = load %struct.tb*, %struct.tb** %5, align 8
  %47 = getelementptr inbounds %struct.tb, %struct.tb* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.tb_switch*, %struct.tb_switch** %8, align 8
  %50 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %49, i32 0, i32 8
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* @TB_CFG_SWITCH, align 4
  %53 = call i32 @tb_cfg_read(i32 %48, %struct.TYPE_5__* %50, i32 %51, i32 0, i32 %52, i32 0, i32 5)
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %11, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %42
  br label %188

57:                                               ; preds = %42
  %58 = load %struct.tb*, %struct.tb** %5, align 8
  %59 = call i32 @tb_dbg(%struct.tb* %58, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %60 = load %struct.tb*, %struct.tb** %5, align 8
  %61 = load %struct.tb_switch*, %struct.tb_switch** %8, align 8
  %62 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %61, i32 0, i32 8
  %63 = call i32 @tb_dump_switch(%struct.tb* %60, %struct.TYPE_5__* %62)
  %64 = load i32, i32* %9, align 4
  %65 = load %struct.tb_switch*, %struct.tb_switch** %8, align 8
  %66 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %65, i32 0, i32 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  store i32 %64, i32* %67, align 8
  %68 = load i32, i32* %12, align 4
  %69 = load %struct.tb_switch*, %struct.tb_switch** %8, align 8
  %70 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %69, i32 0, i32 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 1
  store i32 %68, i32* %71, align 4
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @upper_32_bits(i32 %72)
  %74 = load %struct.tb_switch*, %struct.tb_switch** %8, align 8
  %75 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %74, i32 0, i32 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 5
  store i32 %73, i32* %76, align 4
  %77 = load i32, i32* %7, align 4
  %78 = call i32 @lower_32_bits(i32 %77)
  %79 = load %struct.tb_switch*, %struct.tb_switch** %8, align 8
  %80 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %79, i32 0, i32 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 4
  store i32 %78, i32* %81, align 8
  %82 = load %struct.tb_switch*, %struct.tb_switch** %8, align 8
  %83 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %82, i32 0, i32 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 3
  store i64 0, i64* %84, align 8
  %85 = load %struct.tb_switch*, %struct.tb_switch** %8, align 8
  %86 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %85, i32 0, i32 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = add nsw i32 %88, 1
  %90 = load i32, i32* @GFP_KERNEL, align 4
  %91 = call %struct.tb_switch* @kcalloc(i32 %89, i32 112, i32 %90)
  %92 = load %struct.tb_switch*, %struct.tb_switch** %8, align 8
  %93 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %92, i32 0, i32 4
  store %struct.tb_switch* %91, %struct.tb_switch** %93, align 8
  %94 = load %struct.tb_switch*, %struct.tb_switch** %8, align 8
  %95 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %94, i32 0, i32 4
  %96 = load %struct.tb_switch*, %struct.tb_switch** %95, align 8
  %97 = icmp ne %struct.tb_switch* %96, null
  br i1 %97, label %101, label %98

98:                                               ; preds = %57
  %99 = load i32, i32* @ENOMEM, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %11, align 4
  br label %188

101:                                              ; preds = %57
  store i32 0, i32* %10, align 4
  br label %102

102:                                              ; preds = %126, %101
  %103 = load i32, i32* %10, align 4
  %104 = load %struct.tb_switch*, %struct.tb_switch** %8, align 8
  %105 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %104, i32 0, i32 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = icmp sle i32 %103, %107
  br i1 %108, label %109, label %129

109:                                              ; preds = %102
  %110 = load %struct.tb_switch*, %struct.tb_switch** %8, align 8
  %111 = load %struct.tb_switch*, %struct.tb_switch** %8, align 8
  %112 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %111, i32 0, i32 4
  %113 = load %struct.tb_switch*, %struct.tb_switch** %112, align 8
  %114 = load i32, i32* %10, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %113, i64 %115
  %117 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %116, i32 0, i32 7
  store %struct.tb_switch* %110, %struct.tb_switch** %117, align 8
  %118 = load i32, i32* %10, align 4
  %119 = load %struct.tb_switch*, %struct.tb_switch** %8, align 8
  %120 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %119, i32 0, i32 4
  %121 = load %struct.tb_switch*, %struct.tb_switch** %120, align 8
  %122 = load i32, i32* %10, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %121, i64 %123
  %125 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %124, i32 0, i32 0
  store i32 %118, i32* %125, align 8
  br label %126

126:                                              ; preds = %109
  %127 = load i32, i32* %10, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %10, align 4
  br label %102

129:                                              ; preds = %102
  %130 = load %struct.tb_switch*, %struct.tb_switch** %8, align 8
  %131 = call i32 @tb_switch_get_generation(%struct.tb_switch* %130)
  %132 = load %struct.tb_switch*, %struct.tb_switch** %8, align 8
  %133 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %132, i32 0, i32 6
  store i32 %131, i32* %133, align 8
  %134 = load %struct.tb_switch*, %struct.tb_switch** %8, align 8
  %135 = load i32, i32* @TB_VSE_CAP_PLUG_EVENTS, align 4
  %136 = call i32 @tb_switch_find_vse_cap(%struct.tb_switch* %134, i32 %135)
  store i32 %136, i32* %11, align 4
  %137 = load i32, i32* %11, align 4
  %138 = icmp slt i32 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %129
  %140 = load %struct.tb_switch*, %struct.tb_switch** %8, align 8
  %141 = call i32 @tb_sw_warn(%struct.tb_switch* %140, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  br label %188

142:                                              ; preds = %129
  %143 = load i32, i32* %11, align 4
  %144 = load %struct.tb_switch*, %struct.tb_switch** %8, align 8
  %145 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %144, i32 0, i32 1
  store i32 %143, i32* %145, align 4
  %146 = load %struct.tb_switch*, %struct.tb_switch** %8, align 8
  %147 = load i32, i32* @TB_VSE_CAP_LINK_CONTROLLER, align 4
  %148 = call i32 @tb_switch_find_vse_cap(%struct.tb_switch* %146, i32 %147)
  store i32 %148, i32* %11, align 4
  %149 = load i32, i32* %11, align 4
  %150 = icmp sgt i32 %149, 0
  br i1 %150, label %151, label %155

151:                                              ; preds = %142
  %152 = load i32, i32* %11, align 4
  %153 = load %struct.tb_switch*, %struct.tb_switch** %8, align 8
  %154 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %153, i32 0, i32 2
  store i32 %152, i32* %154, align 8
  br label %155

155:                                              ; preds = %151, %142
  %156 = load i32, i32* %7, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %161, label %158

158:                                              ; preds = %155
  %159 = load %struct.tb_switch*, %struct.tb_switch** %8, align 8
  %160 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %159, i32 0, i32 3
  store i32 1, i32* %160, align 4
  br label %161

161:                                              ; preds = %158, %155
  %162 = load %struct.tb_switch*, %struct.tb_switch** %8, align 8
  %163 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %162, i32 0, i32 5
  %164 = call i32 @device_initialize(%struct.TYPE_6__* %163)
  %165 = load %struct.device*, %struct.device** %6, align 8
  %166 = load %struct.tb_switch*, %struct.tb_switch** %8, align 8
  %167 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %166, i32 0, i32 5
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i32 0, i32 3
  store %struct.device* %165, %struct.device** %168, align 8
  %169 = load %struct.tb_switch*, %struct.tb_switch** %8, align 8
  %170 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %169, i32 0, i32 5
  %171 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %170, i32 0, i32 2
  store i32* @tb_bus_type, i32** %171, align 8
  %172 = load %struct.tb_switch*, %struct.tb_switch** %8, align 8
  %173 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %172, i32 0, i32 5
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 0, i32 1
  store i32* @tb_switch_type, i32** %174, align 8
  %175 = load i32, i32* @switch_groups, align 4
  %176 = load %struct.tb_switch*, %struct.tb_switch** %8, align 8
  %177 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %176, i32 0, i32 5
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i32 0, i32 0
  store i32 %175, i32* %178, align 8
  %179 = load %struct.tb_switch*, %struct.tb_switch** %8, align 8
  %180 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %179, i32 0, i32 5
  %181 = load %struct.tb*, %struct.tb** %5, align 8
  %182 = getelementptr inbounds %struct.tb, %struct.tb* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.tb_switch*, %struct.tb_switch** %8, align 8
  %185 = call i32 @tb_route(%struct.tb_switch* %184)
  %186 = call i32 @dev_set_name(%struct.TYPE_6__* %180, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %183, i32 %185)
  %187 = load %struct.tb_switch*, %struct.tb_switch** %8, align 8
  store %struct.tb_switch* %187, %struct.tb_switch** %4, align 8
  br label %197

188:                                              ; preds = %139, %98, %56
  %189 = load %struct.tb_switch*, %struct.tb_switch** %8, align 8
  %190 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %189, i32 0, i32 4
  %191 = load %struct.tb_switch*, %struct.tb_switch** %190, align 8
  %192 = call i32 @kfree(%struct.tb_switch* %191)
  %193 = load %struct.tb_switch*, %struct.tb_switch** %8, align 8
  %194 = call i32 @kfree(%struct.tb_switch* %193)
  %195 = load i32, i32* %11, align 4
  %196 = call %struct.tb_switch* @ERR_PTR(i32 %195)
  store %struct.tb_switch* %196, %struct.tb_switch** %4, align 8
  br label %197

197:                                              ; preds = %188, %161, %38, %30, %18
  %198 = load %struct.tb_switch*, %struct.tb_switch** %4, align 8
  ret %struct.tb_switch* %198
}

declare dso_local i32 @tb_route_length(i32) #1

declare dso_local %struct.tb_switch* @ERR_PTR(i32) #1

declare dso_local i32 @tb_cfg_get_upstream_port(i32, i32) #1

declare dso_local %struct.tb_switch* @kzalloc(i32, i32) #1

declare dso_local i32 @tb_cfg_read(i32, %struct.TYPE_5__*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @tb_dbg(%struct.tb*, i8*) #1

declare dso_local i32 @tb_dump_switch(%struct.tb*, %struct.TYPE_5__*) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local %struct.tb_switch* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @tb_switch_get_generation(%struct.tb_switch*) #1

declare dso_local i32 @tb_switch_find_vse_cap(%struct.tb_switch*, i32) #1

declare dso_local i32 @tb_sw_warn(%struct.tb_switch*, i8*) #1

declare dso_local i32 @device_initialize(%struct.TYPE_6__*) #1

declare dso_local i32 @dev_set_name(%struct.TYPE_6__*, i8*, i32, i32) #1

declare dso_local i32 @tb_route(%struct.tb_switch*) #1

declare dso_local i32 @kfree(%struct.tb_switch*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
