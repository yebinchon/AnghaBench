; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/qlge/extr_qlge_ethtool.c_ql_update_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/qlge/extr_qlge_ethtool.c_ql_update_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ql_adapter = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Couldn't get xgmac sem.\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Error reading status register 0x%.04x.\0A\00", align 1
@QLGE_RCV_MAC_ERR_STATS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ql_adapter*)* @ql_update_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ql_update_stats(%struct.ql_adapter* %0) #0 {
  %2 = alloca %struct.ql_adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store %struct.ql_adapter* %0, %struct.ql_adapter** %2, align 8
  %6 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %7 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  store i32* %8, i32** %5, align 8
  %9 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %10 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %9, i32 0, i32 0
  %11 = call i32 @spin_lock(i32* %10)
  %12 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %13 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %14 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @ql_sem_spinlock(%struct.ql_adapter* %12, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %1
  %19 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %20 = load i32, i32* @drv, align 4
  %21 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %22 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i32 (%struct.ql_adapter*, i32, i32, i8*, ...) @netif_err(%struct.ql_adapter* %19, i32 %20, i32 %23, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %155

25:                                               ; preds = %1
  store i32 512, i32* %3, align 4
  br label %26

26:                                               ; preds = %48, %25
  %27 = load i32, i32* %3, align 4
  %28 = icmp slt i32 %27, 640
  br i1 %28, label %29, label %51

29:                                               ; preds = %26
  %30 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %31 = load i32, i32* %3, align 4
  %32 = call i64 @ql_read_xgmac_reg64(%struct.ql_adapter* %30, i32 %31, i32* %4)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %29
  %35 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %36 = load i32, i32* @drv, align 4
  %37 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %38 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %3, align 4
  %41 = call i32 (%struct.ql_adapter*, i32, i32, i8*, ...) @netif_err(%struct.ql_adapter* %35, i32 %36, i32 %39, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  br label %149

42:                                               ; preds = %29
  %43 = load i32, i32* %4, align 4
  %44 = load i32*, i32** %5, align 8
  store i32 %43, i32* %44, align 4
  br label %45

45:                                               ; preds = %42
  %46 = load i32*, i32** %5, align 8
  %47 = getelementptr inbounds i32, i32* %46, i32 1
  store i32* %47, i32** %5, align 8
  br label %48

48:                                               ; preds = %45
  %49 = load i32, i32* %3, align 4
  %50 = add nsw i32 %49, 8
  store i32 %50, i32* %3, align 4
  br label %26

51:                                               ; preds = %26
  store i32 768, i32* %3, align 4
  br label %52

52:                                               ; preds = %74, %51
  %53 = load i32, i32* %3, align 4
  %54 = icmp slt i32 %53, 976
  br i1 %54, label %55, label %77

55:                                               ; preds = %52
  %56 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %57 = load i32, i32* %3, align 4
  %58 = call i64 @ql_read_xgmac_reg64(%struct.ql_adapter* %56, i32 %57, i32* %4)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %55
  %61 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %62 = load i32, i32* @drv, align 4
  %63 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %64 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %3, align 4
  %67 = call i32 (%struct.ql_adapter*, i32, i32, i8*, ...) @netif_err(%struct.ql_adapter* %61, i32 %62, i32 %65, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %66)
  br label %149

68:                                               ; preds = %55
  %69 = load i32, i32* %4, align 4
  %70 = load i32*, i32** %5, align 8
  store i32 %69, i32* %70, align 4
  br label %71

71:                                               ; preds = %68
  %72 = load i32*, i32** %5, align 8
  %73 = getelementptr inbounds i32, i32* %72, i32 1
  store i32* %73, i32** %5, align 8
  br label %74

74:                                               ; preds = %71
  %75 = load i32, i32* %3, align 4
  %76 = add nsw i32 %75, 8
  store i32 %76, i32* %3, align 4
  br label %52

77:                                               ; preds = %52
  %78 = load i32, i32* @QLGE_RCV_MAC_ERR_STATS, align 4
  %79 = load i32*, i32** %5, align 8
  %80 = sext i32 %78 to i64
  %81 = getelementptr inbounds i32, i32* %79, i64 %80
  store i32* %81, i32** %5, align 8
  store i32 1280, i32* %3, align 4
  br label %82

82:                                               ; preds = %104, %77
  %83 = load i32, i32* %3, align 4
  %84 = icmp slt i32 %83, 1344
  br i1 %84, label %85, label %107

85:                                               ; preds = %82
  %86 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %87 = load i32, i32* %3, align 4
  %88 = call i64 @ql_read_xgmac_reg64(%struct.ql_adapter* %86, i32 %87, i32* %4)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %98

90:                                               ; preds = %85
  %91 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %92 = load i32, i32* @drv, align 4
  %93 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %94 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* %3, align 4
  %97 = call i32 (%struct.ql_adapter*, i32, i32, i8*, ...) @netif_err(%struct.ql_adapter* %91, i32 %92, i32 %95, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %96)
  br label %149

98:                                               ; preds = %85
  %99 = load i32, i32* %4, align 4
  %100 = load i32*, i32** %5, align 8
  store i32 %99, i32* %100, align 4
  br label %101

101:                                              ; preds = %98
  %102 = load i32*, i32** %5, align 8
  %103 = getelementptr inbounds i32, i32* %102, i32 1
  store i32* %103, i32** %5, align 8
  br label %104

104:                                              ; preds = %101
  %105 = load i32, i32* %3, align 4
  %106 = add nsw i32 %105, 8
  store i32 %106, i32* %3, align 4
  br label %82

107:                                              ; preds = %82
  store i32 1384, i32* %3, align 4
  br label %108

108:                                              ; preds = %130, %107
  %109 = load i32, i32* %3, align 4
  %110 = icmp slt i32 %109, 1448
  br i1 %110, label %111, label %133

111:                                              ; preds = %108
  %112 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %113 = load i32, i32* %3, align 4
  %114 = call i64 @ql_read_xgmac_reg64(%struct.ql_adapter* %112, i32 %113, i32* %4)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %124

116:                                              ; preds = %111
  %117 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %118 = load i32, i32* @drv, align 4
  %119 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %120 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* %3, align 4
  %123 = call i32 (%struct.ql_adapter*, i32, i32, i8*, ...) @netif_err(%struct.ql_adapter* %117, i32 %118, i32 %121, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %122)
  br label %149

124:                                              ; preds = %111
  %125 = load i32, i32* %4, align 4
  %126 = load i32*, i32** %5, align 8
  store i32 %125, i32* %126, align 4
  br label %127

127:                                              ; preds = %124
  %128 = load i32*, i32** %5, align 8
  %129 = getelementptr inbounds i32, i32* %128, i32 1
  store i32* %129, i32** %5, align 8
  br label %130

130:                                              ; preds = %127
  %131 = load i32, i32* %3, align 4
  %132 = add nsw i32 %131, 8
  store i32 %132, i32* %3, align 4
  br label %108

133:                                              ; preds = %108
  %134 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %135 = call i64 @ql_read_xgmac_reg64(%struct.ql_adapter* %134, i32 1464, i32* %4)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %145

137:                                              ; preds = %133
  %138 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %139 = load i32, i32* @drv, align 4
  %140 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %141 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* %3, align 4
  %144 = call i32 (%struct.ql_adapter*, i32, i32, i8*, ...) @netif_err(%struct.ql_adapter* %138, i32 %139, i32 %142, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %143)
  br label %149

145:                                              ; preds = %133
  %146 = load i32, i32* %4, align 4
  %147 = load i32*, i32** %5, align 8
  store i32 %146, i32* %147, align 4
  br label %148

148:                                              ; preds = %145
  br label %149

149:                                              ; preds = %148, %137, %116, %90, %60, %34
  %150 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %151 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %152 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @ql_sem_unlock(%struct.ql_adapter* %150, i32 %153)
  br label %155

155:                                              ; preds = %149, %18
  %156 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %157 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %156, i32 0, i32 0
  %158 = call i32 @spin_unlock(i32* %157)
  %159 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %160 = call i32 @QL_DUMP_STAT(%struct.ql_adapter* %159)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @ql_sem_spinlock(%struct.ql_adapter*, i32) #1

declare dso_local i32 @netif_err(%struct.ql_adapter*, i32, i32, i8*, ...) #1

declare dso_local i64 @ql_read_xgmac_reg64(%struct.ql_adapter*, i32, i32*) #1

declare dso_local i32 @ql_sem_unlock(%struct.ql_adapter*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @QL_DUMP_STAT(%struct.ql_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
