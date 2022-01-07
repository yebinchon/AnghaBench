; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_switch.c_tb_switch_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_switch.c_tb_switch_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb_switch = type { i64, %struct.tb_port*, %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.tb_port = type { %struct.TYPE_8__*, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { %struct.tb_switch* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"resuming switch\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"switch not present anymore\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"uid read failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"changed while suspended (uid %#llx -> %#llx)\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@TB_CFG_SWITCH = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [36 x i8] c"lost during suspend, disconnecting\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tb_switch_resume(%struct.tb_switch* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tb_switch*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.tb_port*, align 8
  store %struct.tb_switch* %0, %struct.tb_switch** %3, align 8
  %8 = load %struct.tb_switch*, %struct.tb_switch** %3, align 8
  %9 = call i32 @tb_sw_dbg(%struct.tb_switch* %8, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.tb_switch*, %struct.tb_switch** %3, align 8
  %11 = call i64 @tb_route(%struct.tb_switch* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %53

13:                                               ; preds = %1
  %14 = load %struct.tb_switch*, %struct.tb_switch** %3, align 8
  %15 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %14, i32 0, i32 3
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.tb_switch*, %struct.tb_switch** %3, align 8
  %20 = call i64 @tb_route(%struct.tb_switch* %19)
  %21 = call i32 @tb_cfg_get_upstream_port(i32 %18, i64 %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %13
  %25 = load %struct.tb_switch*, %struct.tb_switch** %3, align 8
  %26 = call i32 (%struct.tb_switch*, i8*, ...) @tb_sw_info(%struct.tb_switch* %25, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %27 = load i32, i32* %5, align 4
  store i32 %27, i32* %2, align 4
  br label %160

28:                                               ; preds = %13
  %29 = load %struct.tb_switch*, %struct.tb_switch** %3, align 8
  %30 = call i32 @tb_drom_read_uid_only(%struct.tb_switch* %29, i64* %6)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = load %struct.tb_switch*, %struct.tb_switch** %3, align 8
  %35 = call i32 @tb_sw_warn(%struct.tb_switch* %34, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %36 = load i32, i32* %5, align 4
  store i32 %36, i32* %2, align 4
  br label %160

37:                                               ; preds = %28
  %38 = load %struct.tb_switch*, %struct.tb_switch** %3, align 8
  %39 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* %6, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %52

43:                                               ; preds = %37
  %44 = load %struct.tb_switch*, %struct.tb_switch** %3, align 8
  %45 = load %struct.tb_switch*, %struct.tb_switch** %3, align 8
  %46 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* %6, align 8
  %49 = call i32 (%struct.tb_switch*, i8*, ...) @tb_sw_info(%struct.tb_switch* %44, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i64 %47, i64 %48)
  %50 = load i32, i32* @ENODEV, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %2, align 4
  br label %160

52:                                               ; preds = %37
  br label %53

53:                                               ; preds = %52, %1
  %54 = load %struct.tb_switch*, %struct.tb_switch** %3, align 8
  %55 = load %struct.tb_switch*, %struct.tb_switch** %3, align 8
  %56 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %55, i32 0, i32 2
  %57 = bitcast %struct.TYPE_6__* %56 to i32*
  %58 = getelementptr inbounds i32, i32* %57, i64 1
  %59 = load i32, i32* @TB_CFG_SWITCH, align 4
  %60 = call i32 @tb_sw_write(%struct.tb_switch* %54, i32* %58, i32 %59, i32 1, i32 3)
  store i32 %60, i32* %5, align 4
  %61 = load i32, i32* %5, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %53
  %64 = load i32, i32* %5, align 4
  store i32 %64, i32* %2, align 4
  br label %160

65:                                               ; preds = %53
  %66 = load %struct.tb_switch*, %struct.tb_switch** %3, align 8
  %67 = call i32 @tb_lc_configure_link(%struct.tb_switch* %66)
  store i32 %67, i32* %5, align 4
  %68 = load i32, i32* %5, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %65
  %71 = load i32, i32* %5, align 4
  store i32 %71, i32* %2, align 4
  br label %160

72:                                               ; preds = %65
  %73 = load %struct.tb_switch*, %struct.tb_switch** %3, align 8
  %74 = call i32 @tb_plug_events_active(%struct.tb_switch* %73, i32 1)
  store i32 %74, i32* %5, align 4
  %75 = load i32, i32* %5, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %72
  %78 = load i32, i32* %5, align 4
  store i32 %78, i32* %2, align 4
  br label %160

79:                                               ; preds = %72
  store i32 1, i32* %4, align 4
  br label %80

80:                                               ; preds = %156, %79
  %81 = load i32, i32* %4, align 4
  %82 = load %struct.tb_switch*, %struct.tb_switch** %3, align 8
  %83 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = icmp sle i32 %81, %85
  br i1 %86, label %87, label %159

87:                                               ; preds = %80
  %88 = load %struct.tb_switch*, %struct.tb_switch** %3, align 8
  %89 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %88, i32 0, i32 1
  %90 = load %struct.tb_port*, %struct.tb_port** %89, align 8
  %91 = load i32, i32* %4, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.tb_port, %struct.tb_port* %90, i64 %92
  store %struct.tb_port* %93, %struct.tb_port** %7, align 8
  %94 = load %struct.tb_port*, %struct.tb_port** %7, align 8
  %95 = call i64 @tb_port_has_remote(%struct.tb_port* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %103, label %97

97:                                               ; preds = %87
  %98 = load %struct.tb_port*, %struct.tb_port** %7, align 8
  %99 = getelementptr inbounds %struct.tb_port, %struct.tb_port* %98, i32 0, i32 1
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %99, align 8
  %101 = icmp ne %struct.TYPE_7__* %100, null
  br i1 %101, label %103, label %102

102:                                              ; preds = %97
  br label %156

103:                                              ; preds = %97, %87
  %104 = load %struct.tb_port*, %struct.tb_port** %7, align 8
  %105 = call i64 @tb_wait_for_port(%struct.tb_port* %104, i32 1)
  %106 = icmp sle i64 %105, 0
  br i1 %106, label %107, label %132

107:                                              ; preds = %103
  %108 = load %struct.tb_port*, %struct.tb_port** %7, align 8
  %109 = call i32 @tb_port_warn(%struct.tb_port* %108, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  %110 = load %struct.tb_port*, %struct.tb_port** %7, align 8
  %111 = call i64 @tb_port_has_remote(%struct.tb_port* %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %120

113:                                              ; preds = %107
  %114 = load %struct.tb_port*, %struct.tb_port** %7, align 8
  %115 = getelementptr inbounds %struct.tb_port, %struct.tb_port* %114, i32 0, i32 0
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 0
  %118 = load %struct.tb_switch*, %struct.tb_switch** %117, align 8
  %119 = call i32 @tb_sw_set_unplugged(%struct.tb_switch* %118)
  br label %131

120:                                              ; preds = %107
  %121 = load %struct.tb_port*, %struct.tb_port** %7, align 8
  %122 = getelementptr inbounds %struct.tb_port, %struct.tb_port* %121, i32 0, i32 1
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %122, align 8
  %124 = icmp ne %struct.TYPE_7__* %123, null
  br i1 %124, label %125, label %130

125:                                              ; preds = %120
  %126 = load %struct.tb_port*, %struct.tb_port** %7, align 8
  %127 = getelementptr inbounds %struct.tb_port, %struct.tb_port* %126, i32 0, i32 1
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 0
  store i32 1, i32* %129, align 4
  br label %130

130:                                              ; preds = %125, %120
  br label %131

131:                                              ; preds = %130, %113
  br label %155

132:                                              ; preds = %103
  %133 = load %struct.tb_port*, %struct.tb_port** %7, align 8
  %134 = call i64 @tb_port_has_remote(%struct.tb_port* %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %154

136:                                              ; preds = %132
  %137 = load %struct.tb_port*, %struct.tb_port** %7, align 8
  %138 = getelementptr inbounds %struct.tb_port, %struct.tb_port* %137, i32 0, i32 0
  %139 = load %struct.TYPE_8__*, %struct.TYPE_8__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 0
  %141 = load %struct.tb_switch*, %struct.tb_switch** %140, align 8
  %142 = call i32 @tb_switch_resume(%struct.tb_switch* %141)
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %153

144:                                              ; preds = %136
  %145 = load %struct.tb_port*, %struct.tb_port** %7, align 8
  %146 = call i32 @tb_port_warn(%struct.tb_port* %145, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  %147 = load %struct.tb_port*, %struct.tb_port** %7, align 8
  %148 = getelementptr inbounds %struct.tb_port, %struct.tb_port* %147, i32 0, i32 0
  %149 = load %struct.TYPE_8__*, %struct.TYPE_8__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 0
  %151 = load %struct.tb_switch*, %struct.tb_switch** %150, align 8
  %152 = call i32 @tb_sw_set_unplugged(%struct.tb_switch* %151)
  br label %153

153:                                              ; preds = %144, %136
  br label %154

154:                                              ; preds = %153, %132
  br label %155

155:                                              ; preds = %154, %131
  br label %156

156:                                              ; preds = %155, %102
  %157 = load i32, i32* %4, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %4, align 4
  br label %80

159:                                              ; preds = %80
  store i32 0, i32* %2, align 4
  br label %160

160:                                              ; preds = %159, %77, %70, %63, %43, %33, %24
  %161 = load i32, i32* %2, align 4
  ret i32 %161
}

declare dso_local i32 @tb_sw_dbg(%struct.tb_switch*, i8*) #1

declare dso_local i64 @tb_route(%struct.tb_switch*) #1

declare dso_local i32 @tb_cfg_get_upstream_port(i32, i64) #1

declare dso_local i32 @tb_sw_info(%struct.tb_switch*, i8*, ...) #1

declare dso_local i32 @tb_drom_read_uid_only(%struct.tb_switch*, i64*) #1

declare dso_local i32 @tb_sw_warn(%struct.tb_switch*, i8*) #1

declare dso_local i32 @tb_sw_write(%struct.tb_switch*, i32*, i32, i32, i32) #1

declare dso_local i32 @tb_lc_configure_link(%struct.tb_switch*) #1

declare dso_local i32 @tb_plug_events_active(%struct.tb_switch*, i32) #1

declare dso_local i64 @tb_port_has_remote(%struct.tb_port*) #1

declare dso_local i64 @tb_wait_for_port(%struct.tb_port*, i32) #1

declare dso_local i32 @tb_port_warn(%struct.tb_port*, i8*) #1

declare dso_local i32 @tb_sw_set_unplugged(%struct.tb_switch*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
