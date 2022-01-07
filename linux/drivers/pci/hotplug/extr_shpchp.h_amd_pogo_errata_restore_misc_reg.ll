; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_shpchp.h_amd_pogo_errata_restore_misc_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_shpchp.h_amd_pogo_errata_restore_misc_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slot = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@PCIX_MISC_BRIDGE_ERRORS_OFFSET = common dso_local global i32 0, align 4
@PERR_OBSERVED_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Bridge_Errors[ PERR_OBSERVED = %08X] (W1C)\0A\00", align 1
@PCIX_MEM_BASE_LIMIT_OFFSET = common dso_local global i32 0, align 4
@RSE_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Memory_Base_Limit[ RSE ] (W1C)\0A\00", align 1
@PCIX_MISCII_OFFSET = common dso_local global i32 0, align 4
@SERRFATALENABLE_MASK = common dso_local global i32 0, align 4
@SERRNONFATALENABLE_MASK = common dso_local global i32 0, align 4
@PERRFLOODENABLE_MASK = common dso_local global i32 0, align 4
@PERRFATALENABLE_MASK = common dso_local global i32 0, align 4
@PERRNONFATALENABLE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.slot*)* @amd_pogo_errata_restore_misc_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @amd_pogo_errata_restore_misc_reg(%struct.slot* %0) #0 {
  %2 = alloca %struct.slot*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.slot* %0, %struct.slot** %2, align 8
  %8 = load %struct.slot*, %struct.slot** %2, align 8
  %9 = getelementptr inbounds %struct.slot, %struct.slot* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @PCIX_MISC_BRIDGE_ERRORS_OFFSET, align 4
  %14 = call i32 @pci_read_config_dword(i32 %12, i32 %13, i32* %4)
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @PERR_OBSERVED_MASK, align 4
  %17 = and i32 %15, %16
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %34

20:                                               ; preds = %1
  %21 = load %struct.slot*, %struct.slot** %2, align 8
  %22 = getelementptr inbounds %struct.slot, %struct.slot* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call i32 (%struct.TYPE_2__*, i8*, ...) @ctrl_dbg(%struct.TYPE_2__* %23, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load %struct.slot*, %struct.slot** %2, align 8
  %27 = getelementptr inbounds %struct.slot, %struct.slot* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @PCIX_MISC_BRIDGE_ERRORS_OFFSET, align 4
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @pci_write_config_dword(i32 %30, i32 %31, i32 %32)
  br label %34

34:                                               ; preds = %20, %1
  %35 = load %struct.slot*, %struct.slot** %2, align 8
  %36 = getelementptr inbounds %struct.slot, %struct.slot* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @PCIX_MEM_BASE_LIMIT_OFFSET, align 4
  %41 = call i32 @pci_read_config_dword(i32 %39, i32 %40, i32* %5)
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @RSE_MASK, align 4
  %44 = and i32 %42, %43
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %60

47:                                               ; preds = %34
  %48 = load %struct.slot*, %struct.slot** %2, align 8
  %49 = getelementptr inbounds %struct.slot, %struct.slot* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = call i32 (%struct.TYPE_2__*, i8*, ...) @ctrl_dbg(%struct.TYPE_2__* %50, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %52 = load %struct.slot*, %struct.slot** %2, align 8
  %53 = getelementptr inbounds %struct.slot, %struct.slot* %52, i32 0, i32 0
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @PCIX_MEM_BASE_LIMIT_OFFSET, align 4
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @pci_write_config_dword(i32 %56, i32 %57, i32 %58)
  br label %60

60:                                               ; preds = %47, %34
  %61 = load %struct.slot*, %struct.slot** %2, align 8
  %62 = getelementptr inbounds %struct.slot, %struct.slot* %61, i32 0, i32 0
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @PCIX_MISCII_OFFSET, align 4
  %67 = call i32 @pci_read_config_dword(i32 %65, i32 %66, i32* %3)
  %68 = load %struct.slot*, %struct.slot** %2, align 8
  %69 = getelementptr inbounds %struct.slot, %struct.slot* %68, i32 0, i32 0
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @SERRFATALENABLE_MASK, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %60
  %77 = load i32, i32* @SERRFATALENABLE_MASK, align 4
  %78 = load i32, i32* %3, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %3, align 4
  br label %85

80:                                               ; preds = %60
  %81 = load i32, i32* @SERRFATALENABLE_MASK, align 4
  %82 = xor i32 %81, -1
  %83 = load i32, i32* %3, align 4
  %84 = and i32 %83, %82
  store i32 %84, i32* %3, align 4
  br label %85

85:                                               ; preds = %80, %76
  %86 = load %struct.slot*, %struct.slot** %2, align 8
  %87 = getelementptr inbounds %struct.slot, %struct.slot* %86, i32 0, i32 0
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @SERRNONFATALENABLE_MASK, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %85
  %95 = load i32, i32* @SERRNONFATALENABLE_MASK, align 4
  %96 = load i32, i32* %3, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %3, align 4
  br label %103

98:                                               ; preds = %85
  %99 = load i32, i32* @SERRNONFATALENABLE_MASK, align 4
  %100 = xor i32 %99, -1
  %101 = load i32, i32* %3, align 4
  %102 = and i32 %101, %100
  store i32 %102, i32* %3, align 4
  br label %103

103:                                              ; preds = %98, %94
  %104 = load %struct.slot*, %struct.slot** %2, align 8
  %105 = getelementptr inbounds %struct.slot, %struct.slot* %104, i32 0, i32 0
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @PERRFLOODENABLE_MASK, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %103
  %113 = load i32, i32* @PERRFLOODENABLE_MASK, align 4
  %114 = load i32, i32* %3, align 4
  %115 = or i32 %114, %113
  store i32 %115, i32* %3, align 4
  br label %121

116:                                              ; preds = %103
  %117 = load i32, i32* @PERRFLOODENABLE_MASK, align 4
  %118 = xor i32 %117, -1
  %119 = load i32, i32* %3, align 4
  %120 = and i32 %119, %118
  store i32 %120, i32* %3, align 4
  br label %121

121:                                              ; preds = %116, %112
  %122 = load %struct.slot*, %struct.slot** %2, align 8
  %123 = getelementptr inbounds %struct.slot, %struct.slot* %122, i32 0, i32 0
  %124 = load %struct.TYPE_2__*, %struct.TYPE_2__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @PERRFATALENABLE_MASK, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %134

130:                                              ; preds = %121
  %131 = load i32, i32* @PERRFATALENABLE_MASK, align 4
  %132 = load i32, i32* %3, align 4
  %133 = or i32 %132, %131
  store i32 %133, i32* %3, align 4
  br label %139

134:                                              ; preds = %121
  %135 = load i32, i32* @PERRFATALENABLE_MASK, align 4
  %136 = xor i32 %135, -1
  %137 = load i32, i32* %3, align 4
  %138 = and i32 %137, %136
  store i32 %138, i32* %3, align 4
  br label %139

139:                                              ; preds = %134, %130
  %140 = load %struct.slot*, %struct.slot** %2, align 8
  %141 = getelementptr inbounds %struct.slot, %struct.slot* %140, i32 0, i32 0
  %142 = load %struct.TYPE_2__*, %struct.TYPE_2__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @PERRNONFATALENABLE_MASK, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %152

148:                                              ; preds = %139
  %149 = load i32, i32* @PERRNONFATALENABLE_MASK, align 4
  %150 = load i32, i32* %3, align 4
  %151 = or i32 %150, %149
  store i32 %151, i32* %3, align 4
  br label %157

152:                                              ; preds = %139
  %153 = load i32, i32* @PERRNONFATALENABLE_MASK, align 4
  %154 = xor i32 %153, -1
  %155 = load i32, i32* %3, align 4
  %156 = and i32 %155, %154
  store i32 %156, i32* %3, align 4
  br label %157

157:                                              ; preds = %152, %148
  %158 = load %struct.slot*, %struct.slot** %2, align 8
  %159 = getelementptr inbounds %struct.slot, %struct.slot* %158, i32 0, i32 0
  %160 = load %struct.TYPE_2__*, %struct.TYPE_2__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* @PCIX_MISCII_OFFSET, align 4
  %164 = load i32, i32* %3, align 4
  %165 = call i32 @pci_write_config_dword(i32 %162, i32 %163, i32 %164)
  ret void
}

declare dso_local i32 @pci_read_config_dword(i32, i32, i32*) #1

declare dso_local i32 @ctrl_dbg(%struct.TYPE_2__*, i8*, ...) #1

declare dso_local i32 @pci_write_config_dword(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
