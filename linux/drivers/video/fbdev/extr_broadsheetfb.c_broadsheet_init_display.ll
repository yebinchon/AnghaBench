; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_broadsheetfb.c_broadsheet_init_display.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_broadsheetfb.c_broadsheet_init_display.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.broadsheetfb_par = type { i64, %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32 (%struct.broadsheetfb_par*)* }
%struct.TYPE_6__ = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

@panel_table = common dso_local global %struct.TYPE_8__* null, align 8
@BS_CMD_INIT_DSPE_CFG = common dso_local global i32 0, align 4
@BS_CMD_INIT_DSPE_TMG = common dso_local global i32 0, align 4
@BS_CMD_RD_WFM_INFO = common dso_local global i32 0, align 4
@BS_CMD_UPD_GDRV_CLR = common dso_local global i32 0, align 4
@BS_CMD_WAIT_DSPE_TRG = common dso_local global i32 0, align 4
@BS_CMD_LD_IMG = common dso_local global i32 0, align 4
@BS_CMD_WR_REG = common dso_local global i32 0, align 4
@BS_CMD_LD_IMG_END = common dso_local global i32 0, align 4
@BS_CMD_UPD_FULL = common dso_local global i32 0, align 4
@BS_CMD_WAIT_DSPE_FREND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.broadsheetfb_par*)* @broadsheet_init_display to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @broadsheet_init_display(%struct.broadsheetfb_par* %0) #0 {
  %2 = alloca %struct.broadsheetfb_par*, align 8
  %3 = alloca [5 x i32], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.broadsheetfb_par* %0, %struct.broadsheetfb_par** %2, align 8
  %6 = load %struct.broadsheetfb_par*, %struct.broadsheetfb_par** %2, align 8
  %7 = getelementptr inbounds %struct.broadsheetfb_par, %struct.broadsheetfb_par* %6, i32 0, i32 2
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %4, align 4
  %12 = load %struct.broadsheetfb_par*, %struct.broadsheetfb_par** %2, align 8
  %13 = getelementptr inbounds %struct.broadsheetfb_par, %struct.broadsheetfb_par* %12, i32 0, i32 2
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %5, align 4
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** @panel_table, align 8
  %19 = load %struct.broadsheetfb_par*, %struct.broadsheetfb_par** %2, align 8
  %20 = getelementptr inbounds %struct.broadsheetfb_par, %struct.broadsheetfb_par* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds [5 x i32], [5 x i32]* %3, i64 0, i64 0
  store i32 %24, i32* %25, align 16
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** @panel_table, align 8
  %27 = load %struct.broadsheetfb_par*, %struct.broadsheetfb_par** %2, align 8
  %28 = getelementptr inbounds %struct.broadsheetfb_par, %struct.broadsheetfb_par* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds [5 x i32], [5 x i32]* %3, i64 0, i64 1
  store i32 %32, i32* %33, align 4
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** @panel_table, align 8
  %35 = load %struct.broadsheetfb_par*, %struct.broadsheetfb_par** %2, align 8
  %36 = getelementptr inbounds %struct.broadsheetfb_par, %struct.broadsheetfb_par* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds [5 x i32], [5 x i32]* %3, i64 0, i64 2
  store i32 %40, i32* %41, align 8
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** @panel_table, align 8
  %43 = load %struct.broadsheetfb_par*, %struct.broadsheetfb_par** %2, align 8
  %44 = getelementptr inbounds %struct.broadsheetfb_par, %struct.broadsheetfb_par* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = getelementptr inbounds [5 x i32], [5 x i32]* %3, i64 0, i64 3
  store i32 %48, i32* %49, align 4
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** @panel_table, align 8
  %51 = load %struct.broadsheetfb_par*, %struct.broadsheetfb_par** %2, align 8
  %52 = getelementptr inbounds %struct.broadsheetfb_par, %struct.broadsheetfb_par* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 4
  %57 = getelementptr inbounds [5 x i32], [5 x i32]* %3, i64 0, i64 4
  store i32 %56, i32* %57, align 16
  %58 = load %struct.broadsheetfb_par*, %struct.broadsheetfb_par** %2, align 8
  %59 = load i32, i32* @BS_CMD_INIT_DSPE_CFG, align 4
  %60 = getelementptr inbounds [5 x i32], [5 x i32]* %3, i64 0, i64 0
  %61 = call i32 @broadsheet_send_cmdargs(%struct.broadsheetfb_par* %58, i32 %59, i32 5, i32* %60)
  %62 = load %struct.broadsheetfb_par*, %struct.broadsheetfb_par** %2, align 8
  %63 = load i32, i32* @BS_CMD_INIT_DSPE_CFG, align 4
  %64 = getelementptr inbounds [5 x i32], [5 x i32]* %3, i64 0, i64 0
  %65 = call i32 @broadsheet_send_cmdargs(%struct.broadsheetfb_par* %62, i32 %63, i32 5, i32* %64)
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** @panel_table, align 8
  %67 = load %struct.broadsheetfb_par*, %struct.broadsheetfb_par** %2, align 8
  %68 = getelementptr inbounds %struct.broadsheetfb_par, %struct.broadsheetfb_par* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 5
  %72 = load i32, i32* %71, align 4
  %73 = getelementptr inbounds [5 x i32], [5 x i32]* %3, i64 0, i64 0
  store i32 %72, i32* %73, align 16
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** @panel_table, align 8
  %75 = load %struct.broadsheetfb_par*, %struct.broadsheetfb_par** %2, align 8
  %76 = getelementptr inbounds %struct.broadsheetfb_par, %struct.broadsheetfb_par* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 6
  %80 = load i32, i32* %79, align 4
  %81 = getelementptr inbounds [5 x i32], [5 x i32]* %3, i64 0, i64 1
  store i32 %80, i32* %81, align 4
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** @panel_table, align 8
  %83 = load %struct.broadsheetfb_par*, %struct.broadsheetfb_par** %2, align 8
  %84 = getelementptr inbounds %struct.broadsheetfb_par, %struct.broadsheetfb_par* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 7
  %88 = load i32, i32* %87, align 4
  %89 = getelementptr inbounds [5 x i32], [5 x i32]* %3, i64 0, i64 2
  store i32 %88, i32* %89, align 8
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** @panel_table, align 8
  %91 = load %struct.broadsheetfb_par*, %struct.broadsheetfb_par** %2, align 8
  %92 = getelementptr inbounds %struct.broadsheetfb_par, %struct.broadsheetfb_par* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 8
  %96 = load i32, i32* %95, align 4
  %97 = getelementptr inbounds [5 x i32], [5 x i32]* %3, i64 0, i64 3
  store i32 %96, i32* %97, align 4
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** @panel_table, align 8
  %99 = load %struct.broadsheetfb_par*, %struct.broadsheetfb_par** %2, align 8
  %100 = getelementptr inbounds %struct.broadsheetfb_par, %struct.broadsheetfb_par* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 9
  %104 = load i32, i32* %103, align 4
  %105 = getelementptr inbounds [5 x i32], [5 x i32]* %3, i64 0, i64 4
  store i32 %104, i32* %105, align 16
  %106 = load %struct.broadsheetfb_par*, %struct.broadsheetfb_par** %2, align 8
  %107 = load i32, i32* @BS_CMD_INIT_DSPE_TMG, align 4
  %108 = getelementptr inbounds [5 x i32], [5 x i32]* %3, i64 0, i64 0
  %109 = call i32 @broadsheet_send_cmdargs(%struct.broadsheetfb_par* %106, i32 %107, i32 5, i32* %108)
  %110 = load %struct.broadsheetfb_par*, %struct.broadsheetfb_par** %2, align 8
  %111 = load i32, i32* %4, align 4
  %112 = load i32, i32* %5, align 4
  %113 = mul nsw i32 %111, %112
  %114 = mul nsw i32 %113, 2
  %115 = call i32 @broadsheet_write_reg32(%struct.broadsheetfb_par* %110, i32 784, i32 %114)
  %116 = getelementptr inbounds [5 x i32], [5 x i32]* %3, i64 0, i64 0
  store i32 2182, i32* %116, align 16
  %117 = getelementptr inbounds [5 x i32], [5 x i32]* %3, i64 0, i64 1
  store i32 0, i32* %117, align 4
  %118 = load %struct.broadsheetfb_par*, %struct.broadsheetfb_par** %2, align 8
  %119 = load i32, i32* @BS_CMD_RD_WFM_INFO, align 4
  %120 = getelementptr inbounds [5 x i32], [5 x i32]* %3, i64 0, i64 0
  %121 = call i32 @broadsheet_send_cmdargs(%struct.broadsheetfb_par* %118, i32 %119, i32 2, i32* %120)
  %122 = load %struct.broadsheetfb_par*, %struct.broadsheetfb_par** %2, align 8
  %123 = load i32, i32* @BS_CMD_UPD_GDRV_CLR, align 4
  %124 = call i32 @broadsheet_send_command(%struct.broadsheetfb_par* %122, i32 %123)
  %125 = load %struct.broadsheetfb_par*, %struct.broadsheetfb_par** %2, align 8
  %126 = load i32, i32* @BS_CMD_WAIT_DSPE_TRG, align 4
  %127 = call i32 @broadsheet_send_command(%struct.broadsheetfb_par* %125, i32 %126)
  %128 = load %struct.broadsheetfb_par*, %struct.broadsheetfb_par** %2, align 8
  %129 = call i32 @broadsheet_write_reg(%struct.broadsheetfb_par* %128, i32 816, i32 132)
  %130 = load %struct.broadsheetfb_par*, %struct.broadsheetfb_par** %2, align 8
  %131 = load i32, i32* @BS_CMD_WAIT_DSPE_TRG, align 4
  %132 = call i32 @broadsheet_send_command(%struct.broadsheetfb_par* %130, i32 %131)
  %133 = getelementptr inbounds [5 x i32], [5 x i32]* %3, i64 0, i64 0
  store i32 48, i32* %133, align 16
  %134 = load %struct.broadsheetfb_par*, %struct.broadsheetfb_par** %2, align 8
  %135 = load i32, i32* @BS_CMD_LD_IMG, align 4
  %136 = getelementptr inbounds [5 x i32], [5 x i32]* %3, i64 0, i64 0
  %137 = call i32 @broadsheet_send_cmdargs(%struct.broadsheetfb_par* %134, i32 %135, i32 1, i32* %136)
  %138 = getelementptr inbounds [5 x i32], [5 x i32]* %3, i64 0, i64 0
  store i32 340, i32* %138, align 16
  %139 = load %struct.broadsheetfb_par*, %struct.broadsheetfb_par** %2, align 8
  %140 = load i32, i32* @BS_CMD_WR_REG, align 4
  %141 = getelementptr inbounds [5 x i32], [5 x i32]* %3, i64 0, i64 0
  %142 = call i32 @broadsheet_send_cmdargs(%struct.broadsheetfb_par* %139, i32 %140, i32 1, i32* %141)
  %143 = load %struct.broadsheetfb_par*, %struct.broadsheetfb_par** %2, align 8
  %144 = load %struct.TYPE_8__*, %struct.TYPE_8__** @panel_table, align 8
  %145 = load %struct.broadsheetfb_par*, %struct.broadsheetfb_par** %2, align 8
  %146 = getelementptr inbounds %struct.broadsheetfb_par, %struct.broadsheetfb_par* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.TYPE_8__*, %struct.TYPE_8__** @panel_table, align 8
  %152 = load %struct.broadsheetfb_par*, %struct.broadsheetfb_par** %2, align 8
  %153 = getelementptr inbounds %struct.broadsheetfb_par, %struct.broadsheetfb_par* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = mul nsw i32 %150, %157
  %159 = sdiv i32 %158, 2
  %160 = load %struct.broadsheetfb_par*, %struct.broadsheetfb_par** %2, align 8
  %161 = getelementptr inbounds %struct.broadsheetfb_par, %struct.broadsheetfb_par* %160, i32 0, i32 2
  %162 = load %struct.TYPE_6__*, %struct.TYPE_6__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = inttoptr i64 %164 to i32*
  %166 = call i32 @broadsheet_burst_write(%struct.broadsheetfb_par* %143, i32 %159, i32* %165)
  %167 = load %struct.broadsheetfb_par*, %struct.broadsheetfb_par** %2, align 8
  %168 = load i32, i32* @BS_CMD_LD_IMG_END, align 4
  %169 = call i32 @broadsheet_send_command(%struct.broadsheetfb_par* %167, i32 %168)
  %170 = getelementptr inbounds [5 x i32], [5 x i32]* %3, i64 0, i64 0
  store i32 17152, i32* %170, align 16
  %171 = load %struct.broadsheetfb_par*, %struct.broadsheetfb_par** %2, align 8
  %172 = load i32, i32* @BS_CMD_UPD_FULL, align 4
  %173 = getelementptr inbounds [5 x i32], [5 x i32]* %3, i64 0, i64 0
  %174 = call i32 @broadsheet_send_cmdargs(%struct.broadsheetfb_par* %171, i32 %172, i32 1, i32* %173)
  %175 = load %struct.broadsheetfb_par*, %struct.broadsheetfb_par** %2, align 8
  %176 = load i32, i32* @BS_CMD_WAIT_DSPE_TRG, align 4
  %177 = call i32 @broadsheet_send_command(%struct.broadsheetfb_par* %175, i32 %176)
  %178 = load %struct.broadsheetfb_par*, %struct.broadsheetfb_par** %2, align 8
  %179 = load i32, i32* @BS_CMD_WAIT_DSPE_FREND, align 4
  %180 = call i32 @broadsheet_send_command(%struct.broadsheetfb_par* %178, i32 %179)
  %181 = load %struct.broadsheetfb_par*, %struct.broadsheetfb_par** %2, align 8
  %182 = getelementptr inbounds %struct.broadsheetfb_par, %struct.broadsheetfb_par* %181, i32 0, i32 1
  %183 = load %struct.TYPE_7__*, %struct.TYPE_7__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %183, i32 0, i32 0
  %185 = load i32 (%struct.broadsheetfb_par*)*, i32 (%struct.broadsheetfb_par*)** %184, align 8
  %186 = load %struct.broadsheetfb_par*, %struct.broadsheetfb_par** %2, align 8
  %187 = call i32 %185(%struct.broadsheetfb_par* %186)
  ret void
}

declare dso_local i32 @broadsheet_send_cmdargs(%struct.broadsheetfb_par*, i32, i32, i32*) #1

declare dso_local i32 @broadsheet_write_reg32(%struct.broadsheetfb_par*, i32, i32) #1

declare dso_local i32 @broadsheet_send_command(%struct.broadsheetfb_par*, i32) #1

declare dso_local i32 @broadsheet_write_reg(%struct.broadsheetfb_par*, i32, i32) #1

declare dso_local i32 @broadsheet_burst_write(%struct.broadsheetfb_par*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
