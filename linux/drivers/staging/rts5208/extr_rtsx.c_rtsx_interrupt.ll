; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx.c_rtsx_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx.c_rtsx_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_dev = type { i32, i64, i32, i64, i8*, %struct.rtsx_chip* }
%struct.rtsx_chip = type { i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@STATUS_FAIL = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@TRANS_RESULT_FAIL = common dso_local global i8* null, align 8
@NEED_COMPLETE_INT = common dso_local global i32 0, align 4
@DELINK_INT = common dso_local global i32 0, align 4
@TRANS_FAIL_INT = common dso_local global i32 0, align 4
@TRANS_OK_INT = common dso_local global i32 0, align 4
@TRANS_RESULT_OK = common dso_local global i8* null, align 8
@DATA_DONE_INT = common dso_local global i32 0, align 4
@TRANS_NOT_READY = common dso_local global i8* null, align 8
@STATE_TRANS_SG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @rtsx_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtsx_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.rtsx_dev*, align 8
  %7 = alloca %struct.rtsx_chip*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.rtsx_dev*
  store %struct.rtsx_dev* %11, %struct.rtsx_dev** %6, align 8
  %12 = load %struct.rtsx_dev*, %struct.rtsx_dev** %6, align 8
  %13 = icmp ne %struct.rtsx_dev* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load %struct.rtsx_dev*, %struct.rtsx_dev** %6, align 8
  %16 = getelementptr inbounds %struct.rtsx_dev, %struct.rtsx_dev* %15, i32 0, i32 5
  %17 = load %struct.rtsx_chip*, %struct.rtsx_chip** %16, align 8
  store %struct.rtsx_chip* %17, %struct.rtsx_chip** %7, align 8
  br label %20

18:                                               ; preds = %2
  %19 = load i32, i32* @IRQ_NONE, align 4
  store i32 %19, i32* %3, align 4
  br label %165

20:                                               ; preds = %14
  %21 = load %struct.rtsx_chip*, %struct.rtsx_chip** %7, align 8
  %22 = icmp ne %struct.rtsx_chip* %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %20
  %24 = load i32, i32* @IRQ_NONE, align 4
  store i32 %24, i32* %3, align 4
  br label %165

25:                                               ; preds = %20
  %26 = load %struct.rtsx_dev*, %struct.rtsx_dev** %6, align 8
  %27 = getelementptr inbounds %struct.rtsx_dev, %struct.rtsx_dev* %26, i32 0, i32 2
  %28 = call i32 @spin_lock(i32* %27)
  %29 = load %struct.rtsx_chip*, %struct.rtsx_chip** %7, align 8
  %30 = call i32 @rtsx_pre_handle_interrupt(%struct.rtsx_chip* %29)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @STATUS_FAIL, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %46

34:                                               ; preds = %25
  %35 = load %struct.rtsx_dev*, %struct.rtsx_dev** %6, align 8
  %36 = getelementptr inbounds %struct.rtsx_dev, %struct.rtsx_dev* %35, i32 0, i32 2
  %37 = call i32 @spin_unlock(i32* %36)
  %38 = load %struct.rtsx_chip*, %struct.rtsx_chip** %7, align 8
  %39 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp eq i32 %40, -1
  br i1 %41, label %42, label %44

42:                                               ; preds = %34
  %43 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %43, i32* %3, align 4
  br label %165

44:                                               ; preds = %34
  %45 = load i32, i32* @IRQ_NONE, align 4
  store i32 %45, i32* %3, align 4
  br label %165

46:                                               ; preds = %25
  %47 = load %struct.rtsx_chip*, %struct.rtsx_chip** %7, align 8
  %48 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %9, align 4
  %50 = load %struct.rtsx_dev*, %struct.rtsx_dev** %6, align 8
  %51 = getelementptr inbounds %struct.rtsx_dev, %struct.rtsx_dev* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %76

54:                                               ; preds = %46
  %55 = load %struct.rtsx_dev*, %struct.rtsx_dev** %6, align 8
  %56 = getelementptr inbounds %struct.rtsx_dev, %struct.rtsx_dev* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* %9, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %75, label %61

61:                                               ; preds = %54
  %62 = load i8*, i8** @TRANS_RESULT_FAIL, align 8
  %63 = load %struct.rtsx_dev*, %struct.rtsx_dev** %6, align 8
  %64 = getelementptr inbounds %struct.rtsx_dev, %struct.rtsx_dev* %63, i32 0, i32 4
  store i8* %62, i8** %64, align 8
  %65 = load %struct.rtsx_dev*, %struct.rtsx_dev** %6, align 8
  %66 = getelementptr inbounds %struct.rtsx_dev, %struct.rtsx_dev* %65, i32 0, i32 3
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %61
  %70 = load %struct.rtsx_dev*, %struct.rtsx_dev** %6, align 8
  %71 = getelementptr inbounds %struct.rtsx_dev, %struct.rtsx_dev* %70, i32 0, i32 3
  %72 = load i64, i64* %71, align 8
  %73 = call i32 @complete(i64 %72)
  br label %74

74:                                               ; preds = %69, %61
  br label %160

75:                                               ; preds = %54
  br label %76

76:                                               ; preds = %75, %46
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* @NEED_COMPLETE_INT, align 4
  %79 = load i32, i32* @DELINK_INT, align 4
  %80 = or i32 %78, %79
  %81 = and i32 %77, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %159

83:                                               ; preds = %76
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* @TRANS_FAIL_INT, align 4
  %86 = load i32, i32* @DELINK_INT, align 4
  %87 = or i32 %85, %86
  %88 = and i32 %84, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %112

90:                                               ; preds = %83
  %91 = load i32, i32* %9, align 4
  %92 = load i32, i32* @DELINK_INT, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %90
  %96 = load %struct.rtsx_chip*, %struct.rtsx_chip** %7, align 8
  %97 = call i32 @RTSX_SET_DELINK(%struct.rtsx_chip* %96)
  br label %98

98:                                               ; preds = %95, %90
  %99 = load i8*, i8** @TRANS_RESULT_FAIL, align 8
  %100 = load %struct.rtsx_dev*, %struct.rtsx_dev** %6, align 8
  %101 = getelementptr inbounds %struct.rtsx_dev, %struct.rtsx_dev* %100, i32 0, i32 4
  store i8* %99, i8** %101, align 8
  %102 = load %struct.rtsx_dev*, %struct.rtsx_dev** %6, align 8
  %103 = getelementptr inbounds %struct.rtsx_dev, %struct.rtsx_dev* %102, i32 0, i32 3
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %98
  %107 = load %struct.rtsx_dev*, %struct.rtsx_dev** %6, align 8
  %108 = getelementptr inbounds %struct.rtsx_dev, %struct.rtsx_dev* %107, i32 0, i32 3
  %109 = load i64, i64* %108, align 8
  %110 = call i32 @complete(i64 %109)
  br label %111

111:                                              ; preds = %106, %98
  br label %158

112:                                              ; preds = %83
  %113 = load i32, i32* %9, align 4
  %114 = load i32, i32* @TRANS_OK_INT, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %131

117:                                              ; preds = %112
  %118 = load i8*, i8** @TRANS_RESULT_OK, align 8
  %119 = load %struct.rtsx_dev*, %struct.rtsx_dev** %6, align 8
  %120 = getelementptr inbounds %struct.rtsx_dev, %struct.rtsx_dev* %119, i32 0, i32 4
  store i8* %118, i8** %120, align 8
  %121 = load %struct.rtsx_dev*, %struct.rtsx_dev** %6, align 8
  %122 = getelementptr inbounds %struct.rtsx_dev, %struct.rtsx_dev* %121, i32 0, i32 3
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %117
  %126 = load %struct.rtsx_dev*, %struct.rtsx_dev** %6, align 8
  %127 = getelementptr inbounds %struct.rtsx_dev, %struct.rtsx_dev* %126, i32 0, i32 3
  %128 = load i64, i64* %127, align 8
  %129 = call i32 @complete(i64 %128)
  br label %130

130:                                              ; preds = %125, %117
  br label %157

131:                                              ; preds = %112
  %132 = load i32, i32* %9, align 4
  %133 = load i32, i32* @DATA_DONE_INT, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %156

136:                                              ; preds = %131
  %137 = load i8*, i8** @TRANS_NOT_READY, align 8
  %138 = load %struct.rtsx_dev*, %struct.rtsx_dev** %6, align 8
  %139 = getelementptr inbounds %struct.rtsx_dev, %struct.rtsx_dev* %138, i32 0, i32 4
  store i8* %137, i8** %139, align 8
  %140 = load %struct.rtsx_dev*, %struct.rtsx_dev** %6, align 8
  %141 = getelementptr inbounds %struct.rtsx_dev, %struct.rtsx_dev* %140, i32 0, i32 3
  %142 = load i64, i64* %141, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %155

144:                                              ; preds = %136
  %145 = load %struct.rtsx_dev*, %struct.rtsx_dev** %6, align 8
  %146 = getelementptr inbounds %struct.rtsx_dev, %struct.rtsx_dev* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* @STATE_TRANS_SG, align 8
  %149 = icmp eq i64 %147, %148
  br i1 %149, label %150, label %155

150:                                              ; preds = %144
  %151 = load %struct.rtsx_dev*, %struct.rtsx_dev** %6, align 8
  %152 = getelementptr inbounds %struct.rtsx_dev, %struct.rtsx_dev* %151, i32 0, i32 3
  %153 = load i64, i64* %152, align 8
  %154 = call i32 @complete(i64 %153)
  br label %155

155:                                              ; preds = %150, %144, %136
  br label %156

156:                                              ; preds = %155, %131
  br label %157

157:                                              ; preds = %156, %130
  br label %158

158:                                              ; preds = %157, %111
  br label %159

159:                                              ; preds = %158, %76
  br label %160

160:                                              ; preds = %159, %74
  %161 = load %struct.rtsx_dev*, %struct.rtsx_dev** %6, align 8
  %162 = getelementptr inbounds %struct.rtsx_dev, %struct.rtsx_dev* %161, i32 0, i32 2
  %163 = call i32 @spin_unlock(i32* %162)
  %164 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %164, i32* %3, align 4
  br label %165

165:                                              ; preds = %160, %44, %42, %23, %18
  %166 = load i32, i32* %3, align 4
  ret i32 %166
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @rtsx_pre_handle_interrupt(%struct.rtsx_chip*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @complete(i64) #1

declare dso_local i32 @RTSX_SET_DELINK(%struct.rtsx_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
