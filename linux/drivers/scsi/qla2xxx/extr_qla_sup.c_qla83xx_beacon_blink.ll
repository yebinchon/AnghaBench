; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_sup.c_qla83xx_beacon_blink.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_sup.c_qla83xx_beacon_blink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { %struct.qla_hw_data* }
%struct.qla_hw_data = type { i32 }

@QLA_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qla83xx_beacon_blink(%struct.scsi_qla_host* %0) #0 {
  %2 = alloca %struct.scsi_qla_host*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.qla_hw_data*, align 8
  %5 = alloca [6 x i32], align 16
  %6 = alloca [6 x i32], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %2, align 8
  %10 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %11 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %10, i32 0, i32 0
  %12 = load %struct.qla_hw_data*, %struct.qla_hw_data** %11, align 8
  store %struct.qla_hw_data* %12, %struct.qla_hw_data** %4, align 8
  %13 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %14 = call i32 @IS_QLA83XX(%struct.qla_hw_data* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %29, label %16

16:                                               ; preds = %1
  %17 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %18 = call i64 @IS_QLA81XX(%struct.qla_hw_data* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %29, label %20

20:                                               ; preds = %16
  %21 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %22 = call i64 @IS_QLA27XX(%struct.qla_hw_data* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %20
  %25 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %26 = call i64 @IS_QLA28XX(%struct.qla_hw_data* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %24
  br label %152

29:                                               ; preds = %24, %20, %16, %1
  %30 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %31 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %29
  br label %152

35:                                               ; preds = %29
  %36 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %37 = call i64 @IS_QLA27XX(%struct.qla_hw_data* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %35
  %40 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %41 = call i64 @IS_QLA28XX(%struct.qla_hw_data* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %39, %35
  %44 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %45 = call i32 @qla2x00_write_ram_word(%struct.scsi_qla_host* %44, i32 4099, i32 1073742384)
  %46 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %47 = call i32 @qla2x00_write_ram_word(%struct.scsi_qla_host* %46, i32 4100, i32 1073742384)
  br label %152

48:                                               ; preds = %39
  %49 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %50 = call i64 @IS_QLA2031(%struct.qla_hw_data* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %62

52:                                               ; preds = %48
  %53 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %54 = call i32 @qla83xx_select_led_port(%struct.qla_hw_data* %53)
  store i32 %54, i32* %3, align 4
  %55 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %56 = load i32, i32* %3, align 4
  %57 = call i32 @qla83xx_wr_reg(%struct.scsi_qla_host* %55, i32 %56, i32 1073742384)
  %58 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %59 = load i32, i32* %3, align 4
  %60 = add nsw i32 %59, 4
  %61 = call i32 @qla83xx_wr_reg(%struct.scsi_qla_host* %58, i32 %60, i32 1073742384)
  br label %151

62:                                               ; preds = %48
  %63 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %64 = call i64 @IS_QLA8031(%struct.qla_hw_data* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %93

66:                                               ; preds = %62
  %67 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %68 = call i32 @qla83xx_select_led_port(%struct.qla_hw_data* %67)
  store i32 %68, i32* %3, align 4
  %69 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %70 = load i32, i32* %3, align 4
  %71 = call i32 @qla83xx_rd_reg(%struct.scsi_qla_host* %69, i32 %70, i32* %7)
  %72 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %73 = load i32, i32* %3, align 4
  %74 = add nsw i32 %73, 16
  %75 = call i32 @qla83xx_rd_reg(%struct.scsi_qla_host* %72, i32 %74, i32* %8)
  %76 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %77 = load i32, i32* %3, align 4
  %78 = call i32 @qla83xx_wr_reg(%struct.scsi_qla_host* %76, i32 %77, i32 32784384)
  %79 = call i32 @msleep(i32 500)
  %80 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %81 = load i32, i32* %3, align 4
  %82 = call i32 @qla83xx_wr_reg(%struct.scsi_qla_host* %80, i32 %81, i32 1073742324)
  %83 = call i32 @msleep(i32 1000)
  %84 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %85 = load i32, i32* %3, align 4
  %86 = load i32, i32* %7, align 4
  %87 = call i32 @qla83xx_wr_reg(%struct.scsi_qla_host* %84, i32 %85, i32 %86)
  %88 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %89 = load i32, i32* %3, align 4
  %90 = add nsw i32 %89, 16
  %91 = load i32, i32* %8, align 4
  %92 = call i32 @qla83xx_wr_reg(%struct.scsi_qla_host* %88, i32 %90, i32 %91)
  br label %150

93:                                               ; preds = %62
  %94 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %95 = call i64 @IS_QLA81XX(%struct.qla_hw_data* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %149

97:                                               ; preds = %93
  %98 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %99 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i64 0, i64 0
  %100 = call i32 @qla81xx_get_led_config(%struct.scsi_qla_host* %98, i32* %99)
  store i32 %100, i32* %9, align 4
  %101 = load i32, i32* %9, align 4
  %102 = load i32, i32* @QLA_SUCCESS, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %145

104:                                              ; preds = %97
  %105 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %106 = call i64 @IS_QLA81XX(%struct.qla_hw_data* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %115

108:                                              ; preds = %104
  %109 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 0
  store i32 16384, i32* %109, align 16
  %110 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 1
  store i32 8192, i32* %110, align 4
  %111 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 2
  store i32 0, i32* %111, align 8
  %112 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 3
  store i32 0, i32* %112, align 4
  %113 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 4
  store i32 0, i32* %113, align 16
  %114 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 5
  store i32 0, i32* %114, align 4
  br label %122

115:                                              ; preds = %104
  %116 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 0
  store i32 16384, i32* %116, align 16
  %117 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 1
  store i32 16384, i32* %117, align 4
  %118 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 2
  store i32 16384, i32* %118, align 8
  %119 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 3
  store i32 8192, i32* %119, align 4
  %120 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 4
  store i32 0, i32* %120, align 16
  %121 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 5
  store i32 8192, i32* %121, align 4
  br label %122

122:                                              ; preds = %115, %108
  %123 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %124 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 0
  %125 = call i32 @qla81xx_set_led_config(%struct.scsi_qla_host* %123, i32* %124)
  store i32 %125, i32* %9, align 4
  %126 = call i32 @msleep(i32 1000)
  %127 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %128 = call i64 @IS_QLA81XX(%struct.qla_hw_data* %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %134

130:                                              ; preds = %122
  %131 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 0
  store i32 16384, i32* %131, align 16
  %132 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 1
  store i32 8192, i32* %132, align 4
  %133 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 2
  store i32 0, i32* %133, align 8
  br label %141

134:                                              ; preds = %122
  %135 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 0
  store i32 16384, i32* %135, align 16
  %136 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 1
  store i32 8192, i32* %136, align 4
  %137 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 2
  store i32 16384, i32* %137, align 8
  %138 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 3
  store i32 16384, i32* %138, align 4
  %139 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 4
  store i32 0, i32* %139, align 16
  %140 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 5
  store i32 8192, i32* %140, align 4
  br label %141

141:                                              ; preds = %134, %130
  %142 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %143 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 0
  %144 = call i32 @qla81xx_set_led_config(%struct.scsi_qla_host* %142, i32* %143)
  store i32 %144, i32* %9, align 4
  br label %145

145:                                              ; preds = %141, %97
  %146 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %147 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i64 0, i64 0
  %148 = call i32 @qla81xx_set_led_config(%struct.scsi_qla_host* %146, i32* %147)
  br label %149

149:                                              ; preds = %145, %93
  br label %150

150:                                              ; preds = %149, %66
  br label %151

151:                                              ; preds = %150, %52
  br label %152

152:                                              ; preds = %28, %34, %151, %43
  ret void
}

declare dso_local i32 @IS_QLA83XX(%struct.qla_hw_data*) #1

declare dso_local i64 @IS_QLA81XX(%struct.qla_hw_data*) #1

declare dso_local i64 @IS_QLA27XX(%struct.qla_hw_data*) #1

declare dso_local i64 @IS_QLA28XX(%struct.qla_hw_data*) #1

declare dso_local i32 @qla2x00_write_ram_word(%struct.scsi_qla_host*, i32, i32) #1

declare dso_local i64 @IS_QLA2031(%struct.qla_hw_data*) #1

declare dso_local i32 @qla83xx_select_led_port(%struct.qla_hw_data*) #1

declare dso_local i32 @qla83xx_wr_reg(%struct.scsi_qla_host*, i32, i32) #1

declare dso_local i64 @IS_QLA8031(%struct.qla_hw_data*) #1

declare dso_local i32 @qla83xx_rd_reg(%struct.scsi_qla_host*, i32, i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @qla81xx_get_led_config(%struct.scsi_qla_host*, i32*) #1

declare dso_local i32 @qla81xx_set_led_config(%struct.scsi_qla_host*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
