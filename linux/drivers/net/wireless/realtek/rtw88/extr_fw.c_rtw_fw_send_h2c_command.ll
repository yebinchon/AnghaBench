; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_fw.c_rtw_fw_send_h2c_command.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_fw.c_rtw_fw_send_h2c_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@RTW_DBG_FW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"send H2C content %02x%02x%02x%02x %02x%02x%02x%02x\0A\00", align 1
@REG_HMEBOX0 = common dso_local global i32 0, align 4
@REG_HMEBOX0_EX = common dso_local global i32 0, align 4
@REG_HMEBOX1 = common dso_local global i32 0, align 4
@REG_HMEBOX1_EX = common dso_local global i32 0, align 4
@REG_HMEBOX2 = common dso_local global i32 0, align 4
@REG_HMEBOX2_EX = common dso_local global i32 0, align 4
@REG_HMEBOX3 = common dso_local global i32 0, align 4
@REG_HMEBOX3_EX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"invalid h2c mail box number\0A\00", align 1
@REG_HMETFR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"failed to send h2c command\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtw_dev*, i32*)* @rtw_fw_send_h2c_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtw_fw_send_h2c_command(%struct.rtw_dev* %0, i32* %1) #0 {
  %3 = alloca %struct.rtw_dev*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.rtw_dev* %0, %struct.rtw_dev** %3, align 8
  store i32* %1, i32** %4, align 8
  %11 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %12 = load i32, i32* @RTW_DBG_FW, align 4
  %13 = load i32*, i32** %4, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 3
  %15 = load i32, i32* %14, align 4
  %16 = load i32*, i32** %4, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 2
  %18 = load i32, i32* %17, align 4
  %19 = load i32*, i32** %4, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32*, i32** %4, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32*, i32** %4, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 7
  %27 = load i32, i32* %26, align 4
  %28 = load i32*, i32** %4, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 6
  %30 = load i32, i32* %29, align 4
  %31 = load i32*, i32** %4, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 5
  %33 = load i32, i32* %32, align 4
  %34 = load i32*, i32** %4, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 4
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @rtw_dbg(%struct.rtw_dev* %11, i32 %12, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %18, i32 %21, i32 %24, i32 %27, i32 %30, i32 %33, i32 %36)
  %38 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %39 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = call i32 @spin_lock(i32* %40)
  %42 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %43 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %5, align 4
  switch i32 %46, label %59 [
    i32 0, label %47
    i32 1, label %50
    i32 2, label %53
    i32 3, label %56
  ]

47:                                               ; preds = %2
  %48 = load i32, i32* @REG_HMEBOX0, align 4
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* @REG_HMEBOX0_EX, align 4
  store i32 %49, i32* %8, align 4
  br label %61

50:                                               ; preds = %2
  %51 = load i32, i32* @REG_HMEBOX1, align 4
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* @REG_HMEBOX1_EX, align 4
  store i32 %52, i32* %8, align 4
  br label %61

53:                                               ; preds = %2
  %54 = load i32, i32* @REG_HMEBOX2, align 4
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* @REG_HMEBOX2_EX, align 4
  store i32 %55, i32* %8, align 4
  br label %61

56:                                               ; preds = %2
  %57 = load i32, i32* @REG_HMEBOX3, align 4
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* @REG_HMEBOX3_EX, align 4
  store i32 %58, i32* %8, align 4
  br label %61

59:                                               ; preds = %2
  %60 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %133

61:                                               ; preds = %56, %53, %50, %47
  store i32 20, i32* %9, align 4
  br label %62

62:                                               ; preds = %76, %61
  %63 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %64 = load i32, i32* @REG_HMETFR, align 4
  %65 = call i32 @rtw_read8(%struct.rtw_dev* %63, i32 %64)
  store i32 %65, i32* %6, align 4
  br label %66

66:                                               ; preds = %62
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* %5, align 4
  %69 = ashr i32 %67, %68
  %70 = and i32 %69, 1
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %66
  %73 = load i32, i32* %9, align 4
  %74 = add nsw i32 %73, -1
  store i32 %74, i32* %9, align 4
  %75 = icmp sgt i32 %74, 0
  br label %76

76:                                               ; preds = %72, %66
  %77 = phi i1 [ false, %66 ], [ %75, %72 ]
  br i1 %77, label %62, label %78

78:                                               ; preds = %76
  %79 = load i32, i32* %9, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %78
  %82 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %83 = call i32 @rtw_err(%struct.rtw_dev* %82, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %133

84:                                               ; preds = %78
  store i32 0, i32* %10, align 4
  br label %85

85:                                               ; preds = %99, %84
  %86 = load i32, i32* %10, align 4
  %87 = icmp slt i32 %86, 4
  br i1 %87, label %88, label %102

88:                                               ; preds = %85
  %89 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %90 = load i32, i32* %7, align 4
  %91 = load i32, i32* %10, align 4
  %92 = add nsw i32 %90, %91
  %93 = load i32*, i32** %4, align 8
  %94 = load i32, i32* %10, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @rtw_write8(%struct.rtw_dev* %89, i32 %92, i32 %97)
  br label %99

99:                                               ; preds = %88
  %100 = load i32, i32* %10, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %10, align 4
  br label %85

102:                                              ; preds = %85
  store i32 0, i32* %10, align 4
  br label %103

103:                                              ; preds = %118, %102
  %104 = load i32, i32* %10, align 4
  %105 = icmp slt i32 %104, 4
  br i1 %105, label %106, label %121

106:                                              ; preds = %103
  %107 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %108 = load i32, i32* %8, align 4
  %109 = load i32, i32* %10, align 4
  %110 = add nsw i32 %108, %109
  %111 = load i32*, i32** %4, align 8
  %112 = load i32, i32* %10, align 4
  %113 = add nsw i32 %112, 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %111, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @rtw_write8(%struct.rtw_dev* %107, i32 %110, i32 %116)
  br label %118

118:                                              ; preds = %106
  %119 = load i32, i32* %10, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %10, align 4
  br label %103

121:                                              ; preds = %103
  %122 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %123 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %124, align 4
  %127 = icmp sge i32 %126, 4
  br i1 %127, label %128, label %132

128:                                              ; preds = %121
  %129 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %130 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 0
  store i32 0, i32* %131, align 4
  br label %132

132:                                              ; preds = %128, %121
  br label %133

133:                                              ; preds = %132, %81, %59
  %134 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %135 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 1
  %137 = call i32 @spin_unlock(i32* %136)
  ret void
}

declare dso_local i32 @rtw_dbg(%struct.rtw_dev*, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @WARN(i32, i8*) #1

declare dso_local i32 @rtw_read8(%struct.rtw_dev*, i32) #1

declare dso_local i32 @rtw_err(%struct.rtw_dev*, i8*) #1

declare dso_local i32 @rtw_write8(%struct.rtw_dev*, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
