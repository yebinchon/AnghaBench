; ModuleID = '/home/carl/AnghaBench/linux/drivers/w1/slaves/extr_w1_therm.c_read_therm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/w1/slaves/extr_w1_therm.c_read_therm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.w1_slave = type { i64*, %struct.w1_master* }
%struct.w1_master = type { i32 }
%struct.therm_info = type { i64*, i32, i64 }

@ENODEV = common dso_local global i32 0, align 4
@W1_READ_PSUPPLY = common dso_local global i32 0, align 4
@w1_strong_pullup = common dso_local global i32 0, align 4
@W1_CONVERT_TEMP = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@W1_READ_SCRATCHPAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"w1_read_block() returned %u instead of 9.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.w1_slave*, %struct.therm_info*)* @read_therm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_therm(%struct.device* %0, %struct.w1_slave* %1, %struct.therm_info* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.w1_slave*, align 8
  %6 = alloca %struct.therm_info*, align 8
  %7 = alloca %struct.w1_master*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.w1_slave* %1, %struct.w1_slave** %5, align 8
  store %struct.therm_info* %2, %struct.therm_info** %6, align 8
  %15 = load %struct.w1_slave*, %struct.w1_slave** %5, align 8
  %16 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %15, i32 0, i32 1
  %17 = load %struct.w1_master*, %struct.w1_master** %16, align 8
  store %struct.w1_master* %17, %struct.w1_master** %7, align 8
  store i32 10, i32* %10, align 4
  %18 = load %struct.w1_slave*, %struct.w1_slave** %5, align 8
  %19 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %18, i32 0, i32 0
  %20 = load i64*, i64** %19, align 8
  store i64* %20, i64** %11, align 8
  %21 = load i64*, i64** %11, align 8
  %22 = icmp ne i64* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %3
  %24 = load i32, i32* @ENODEV, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %9, align 4
  br label %170

26:                                               ; preds = %3
  %27 = load i64*, i64** %11, align 8
  %28 = call i32 @THERM_REFCNT(i64* %27)
  %29 = call i32 @atomic_inc(i32 %28)
  %30 = load %struct.w1_master*, %struct.w1_master** %7, align 8
  %31 = getelementptr inbounds %struct.w1_master, %struct.w1_master* %30, i32 0, i32 0
  %32 = call i32 @mutex_lock_interruptible(i32* %31)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %26
  br label %166

36:                                               ; preds = %26
  %37 = load %struct.therm_info*, %struct.therm_info** %6, align 8
  %38 = getelementptr inbounds %struct.therm_info, %struct.therm_info* %37, i32 0, i32 0
  %39 = load i64*, i64** %38, align 8
  %40 = call i32 @memset(i64* %39, i32 0, i32 8)
  br label %41

41:                                               ; preds = %160, %62, %36
  %42 = load i32, i32* %10, align 4
  %43 = add nsw i32 %42, -1
  store i32 %43, i32* %10, align 4
  %44 = icmp ne i32 %42, 0
  br i1 %44, label %45, label %161

45:                                               ; preds = %41
  %46 = load %struct.therm_info*, %struct.therm_info** %6, align 8
  %47 = getelementptr inbounds %struct.therm_info, %struct.therm_info* %46, i32 0, i32 1
  store i32 0, i32* %47, align 8
  %48 = load %struct.therm_info*, %struct.therm_info** %6, align 8
  %49 = getelementptr inbounds %struct.therm_info, %struct.therm_info* %48, i32 0, i32 2
  store i64 0, i64* %49, align 8
  %50 = load %struct.w1_slave*, %struct.w1_slave** %5, align 8
  %51 = call i64 @w1_reset_select_slave(%struct.w1_slave* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %154, label %53

53:                                               ; preds = %45
  store i32 0, i32* %12, align 4
  store i32 750, i32* %13, align 4
  %54 = load %struct.w1_master*, %struct.w1_master** %7, align 8
  %55 = load i32, i32* @W1_READ_PSUPPLY, align 4
  %56 = call i32 @w1_write_8(%struct.w1_master* %54, i32 %55)
  %57 = load %struct.w1_master*, %struct.w1_master** %7, align 8
  %58 = call i64 @w1_read_8(%struct.w1_master* %57)
  store i64 %58, i64* %8, align 8
  %59 = load %struct.w1_slave*, %struct.w1_slave** %5, align 8
  %60 = call i64 @w1_reset_select_slave(%struct.w1_slave* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %53
  br label %41

63:                                               ; preds = %53
  %64 = load i32, i32* @w1_strong_pullup, align 4
  %65 = icmp eq i32 %64, 2
  br i1 %65, label %72, label %66

66:                                               ; preds = %63
  %67 = load i64, i64* %8, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %76, label %69

69:                                               ; preds = %66
  %70 = load i32, i32* @w1_strong_pullup, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %69, %63
  %73 = load %struct.w1_master*, %struct.w1_master** %7, align 8
  %74 = load i32, i32* %13, align 4
  %75 = call i32 @w1_next_pullup(%struct.w1_master* %73, i32 %74)
  br label %76

76:                                               ; preds = %72, %69, %66
  %77 = load %struct.w1_master*, %struct.w1_master** %7, align 8
  %78 = load i32, i32* @W1_CONVERT_TEMP, align 4
  %79 = call i32 @w1_write_8(%struct.w1_master* %77, i32 %78)
  %80 = load i64, i64* %8, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %101

82:                                               ; preds = %76
  %83 = load %struct.w1_master*, %struct.w1_master** %7, align 8
  %84 = getelementptr inbounds %struct.w1_master, %struct.w1_master* %83, i32 0, i32 0
  %85 = call i32 @mutex_unlock(i32* %84)
  %86 = load i32, i32* %13, align 4
  %87 = call i64 @msleep_interruptible(i32 %86)
  store i64 %87, i64* %14, align 8
  %88 = load i64, i64* %14, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %82
  %91 = load i32, i32* @EINTR, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %9, align 4
  br label %166

93:                                               ; preds = %82
  %94 = load %struct.w1_master*, %struct.w1_master** %7, align 8
  %95 = getelementptr inbounds %struct.w1_master, %struct.w1_master* %94, i32 0, i32 0
  %96 = call i32 @mutex_lock_interruptible(i32* %95)
  store i32 %96, i32* %9, align 4
  %97 = load i32, i32* %9, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %93
  br label %166

100:                                              ; preds = %93
  br label %114

101:                                              ; preds = %76
  %102 = load i32, i32* @w1_strong_pullup, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %113, label %104

104:                                              ; preds = %101
  %105 = load i32, i32* %13, align 4
  %106 = call i64 @msleep_interruptible(i32 %105)
  store i64 %106, i64* %14, align 8
  %107 = load i64, i64* %14, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %104
  %110 = load i32, i32* @EINTR, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %9, align 4
  br label %162

112:                                              ; preds = %104
  br label %113

113:                                              ; preds = %112, %101
  br label %114

114:                                              ; preds = %113, %100
  %115 = load %struct.w1_slave*, %struct.w1_slave** %5, align 8
  %116 = call i64 @w1_reset_select_slave(%struct.w1_slave* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %153, label %118

118:                                              ; preds = %114
  %119 = load %struct.w1_master*, %struct.w1_master** %7, align 8
  %120 = load i32, i32* @W1_READ_SCRATCHPAD, align 4
  %121 = call i32 @w1_write_8(%struct.w1_master* %119, i32 %120)
  %122 = load %struct.w1_master*, %struct.w1_master** %7, align 8
  %123 = load %struct.therm_info*, %struct.therm_info** %6, align 8
  %124 = getelementptr inbounds %struct.therm_info, %struct.therm_info* %123, i32 0, i32 0
  %125 = load i64*, i64** %124, align 8
  %126 = call i32 @w1_read_block(%struct.w1_master* %122, i64* %125, i32 9)
  store i32 %126, i32* %12, align 4
  %127 = load i32, i32* %12, align 4
  %128 = icmp ne i32 %127, 9
  br i1 %128, label %129, label %133

129:                                              ; preds = %118
  %130 = load %struct.device*, %struct.device** %4, align 8
  %131 = load i32, i32* %12, align 4
  %132 = call i32 @dev_warn(%struct.device* %130, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %131)
  br label %133

133:                                              ; preds = %129, %118
  %134 = load %struct.therm_info*, %struct.therm_info** %6, align 8
  %135 = getelementptr inbounds %struct.therm_info, %struct.therm_info* %134, i32 0, i32 0
  %136 = load i64*, i64** %135, align 8
  %137 = call i64 @w1_calc_crc8(i64* %136, i32 8)
  %138 = load %struct.therm_info*, %struct.therm_info** %6, align 8
  %139 = getelementptr inbounds %struct.therm_info, %struct.therm_info* %138, i32 0, i32 2
  store i64 %137, i64* %139, align 8
  %140 = load %struct.therm_info*, %struct.therm_info** %6, align 8
  %141 = getelementptr inbounds %struct.therm_info, %struct.therm_info* %140, i32 0, i32 0
  %142 = load i64*, i64** %141, align 8
  %143 = getelementptr inbounds i64, i64* %142, i64 8
  %144 = load i64, i64* %143, align 8
  %145 = load %struct.therm_info*, %struct.therm_info** %6, align 8
  %146 = getelementptr inbounds %struct.therm_info, %struct.therm_info* %145, i32 0, i32 2
  %147 = load i64, i64* %146, align 8
  %148 = icmp eq i64 %144, %147
  br i1 %148, label %149, label %152

149:                                              ; preds = %133
  %150 = load %struct.therm_info*, %struct.therm_info** %6, align 8
  %151 = getelementptr inbounds %struct.therm_info, %struct.therm_info* %150, i32 0, i32 1
  store i32 1, i32* %151, align 8
  br label %152

152:                                              ; preds = %149, %133
  br label %153

153:                                              ; preds = %152, %114
  br label %154

154:                                              ; preds = %153, %45
  %155 = load %struct.therm_info*, %struct.therm_info** %6, align 8
  %156 = getelementptr inbounds %struct.therm_info, %struct.therm_info* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 8
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %160

159:                                              ; preds = %154
  br label %161

160:                                              ; preds = %154
  br label %41

161:                                              ; preds = %159, %41
  br label %162

162:                                              ; preds = %161, %109
  %163 = load %struct.w1_master*, %struct.w1_master** %7, align 8
  %164 = getelementptr inbounds %struct.w1_master, %struct.w1_master* %163, i32 0, i32 0
  %165 = call i32 @mutex_unlock(i32* %164)
  br label %166

166:                                              ; preds = %162, %99, %90, %35
  %167 = load i64*, i64** %11, align 8
  %168 = call i32 @THERM_REFCNT(i64* %167)
  %169 = call i32 @atomic_dec(i32 %168)
  br label %170

170:                                              ; preds = %166, %23
  %171 = load i32, i32* %9, align 4
  ret i32 %171
}

declare dso_local i32 @atomic_inc(i32) #1

declare dso_local i32 @THERM_REFCNT(i64*) #1

declare dso_local i32 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @memset(i64*, i32, i32) #1

declare dso_local i64 @w1_reset_select_slave(%struct.w1_slave*) #1

declare dso_local i32 @w1_write_8(%struct.w1_master*, i32) #1

declare dso_local i64 @w1_read_8(%struct.w1_master*) #1

declare dso_local i32 @w1_next_pullup(%struct.w1_master*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @msleep_interruptible(i32) #1

declare dso_local i32 @w1_read_block(%struct.w1_master*, i64*, i32) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i32) #1

declare dso_local i64 @w1_calc_crc8(i64*, i32) #1

declare dso_local i32 @atomic_dec(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
