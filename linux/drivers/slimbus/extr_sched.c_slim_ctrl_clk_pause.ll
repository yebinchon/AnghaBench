; ModuleID = '/home/carl/AnghaBench/linux/drivers/slimbus/extr_sched.c_slim_ctrl_clk_pause.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/slimbus/extr_sched.c_slim_ctrl_clk_pause.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.slim_controller = type { i32 (%struct.slim_controller*)*, i32, i32, %struct.slim_sched }
%struct.slim_sched = type { i64, i32, i32 }
%struct.slim_val_inf = type { i32, i64*, i32*, i32*, i32, i32 }

@txn = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@SLIM_MSG_MC_BEGIN_RECONFIGURATION = common dso_local global i32 0, align 4
@SLIM_LA_MANAGER = common dso_local global i32 0, align 4
@SLIM_CLK_UNSPECIFIED = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@SLIM_CLK_ACTIVE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"Previous clock pause did not finish\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@SLIM_CLK_PAUSED = common dso_local global i64 0, align 8
@SLIM_MAX_TIDS = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@SLIM_CLK_ENTERING_PAUSE = common dso_local global i64 0, align 8
@SLIM_MSG_MC_NEXT_PAUSE_CLOCK = common dso_local global i32 0, align 4
@SLIM_MSG_MC_RECONFIGURE_NOW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @slim_ctrl_clk_pause(%struct.slim_controller* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.slim_controller*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.slim_sched*, align 8
  %12 = alloca %struct.slim_val_inf, align 8
  store %struct.slim_controller* %0, %struct.slim_controller** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %9, align 4
  %13 = load %struct.slim_controller*, %struct.slim_controller** %5, align 8
  %14 = getelementptr inbounds %struct.slim_controller, %struct.slim_controller* %13, i32 0, i32 3
  store %struct.slim_sched* %14, %struct.slim_sched** %11, align 8
  %15 = bitcast %struct.slim_val_inf* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %15, i8 0, i64 40, i1 false)
  %16 = load i32, i32* @SLIM_MSG_MC_BEGIN_RECONFIGURATION, align 4
  %17 = load i32, i32* @SLIM_LA_MANAGER, align 4
  %18 = load i64, i64* bitcast (%struct.TYPE_4__* @txn to i64*), align 4
  %19 = call i32 @DEFINE_SLIM_BCAST_TXN(i64 %18, i32 %16, i32 3, i32 %17, %struct.slim_val_inf* %12)
  %20 = load i32, i32* %6, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %3
  %23 = load i64, i64* %7, align 8
  %24 = load i64, i64* @SLIM_CLK_UNSPECIFIED, align 8
  %25 = icmp sgt i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %175

29:                                               ; preds = %22, %3
  %30 = load %struct.slim_sched*, %struct.slim_sched** %11, align 8
  %31 = getelementptr inbounds %struct.slim_sched, %struct.slim_sched* %30, i32 0, i32 1
  %32 = call i32 @mutex_lock(i32* %31)
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %88

35:                                               ; preds = %29
  %36 = load %struct.slim_sched*, %struct.slim_sched** %11, align 8
  %37 = getelementptr inbounds %struct.slim_sched, %struct.slim_sched* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @SLIM_CLK_ACTIVE, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %35
  %42 = load %struct.slim_sched*, %struct.slim_sched** %11, align 8
  %43 = getelementptr inbounds %struct.slim_sched, %struct.slim_sched* %42, i32 0, i32 1
  %44 = call i32 @mutex_unlock(i32* %43)
  store i32 0, i32* %4, align 4
  br label %175

45:                                               ; preds = %35
  %46 = load %struct.slim_sched*, %struct.slim_sched** %11, align 8
  %47 = getelementptr inbounds %struct.slim_sched, %struct.slim_sched* %46, i32 0, i32 2
  %48 = call i32 @msecs_to_jiffies(i32 100)
  %49 = call i32 @wait_for_completion_timeout(i32* %47, i32 %48)
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %59, label %52

52:                                               ; preds = %45
  %53 = load %struct.slim_sched*, %struct.slim_sched** %11, align 8
  %54 = getelementptr inbounds %struct.slim_sched, %struct.slim_sched* %53, i32 0, i32 1
  %55 = call i32 @mutex_unlock(i32* %54)
  %56 = call i32 @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %57 = load i32, i32* @ETIMEDOUT, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %4, align 4
  br label %175

59:                                               ; preds = %45
  store i32 0, i32* %9, align 4
  %60 = load %struct.slim_sched*, %struct.slim_sched** %11, align 8
  %61 = getelementptr inbounds %struct.slim_sched, %struct.slim_sched* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @SLIM_CLK_PAUSED, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %76

65:                                               ; preds = %59
  %66 = load %struct.slim_controller*, %struct.slim_controller** %5, align 8
  %67 = getelementptr inbounds %struct.slim_controller, %struct.slim_controller* %66, i32 0, i32 0
  %68 = load i32 (%struct.slim_controller*)*, i32 (%struct.slim_controller*)** %67, align 8
  %69 = icmp ne i32 (%struct.slim_controller*)* %68, null
  br i1 %69, label %70, label %76

70:                                               ; preds = %65
  %71 = load %struct.slim_controller*, %struct.slim_controller** %5, align 8
  %72 = getelementptr inbounds %struct.slim_controller, %struct.slim_controller* %71, i32 0, i32 0
  %73 = load i32 (%struct.slim_controller*)*, i32 (%struct.slim_controller*)** %72, align 8
  %74 = load %struct.slim_controller*, %struct.slim_controller** %5, align 8
  %75 = call i32 %73(%struct.slim_controller* %74)
  store i32 %75, i32* %9, align 4
  br label %76

76:                                               ; preds = %70, %65, %59
  %77 = load i32, i32* %9, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %83, label %79

79:                                               ; preds = %76
  %80 = load i64, i64* @SLIM_CLK_ACTIVE, align 8
  %81 = load %struct.slim_sched*, %struct.slim_sched** %11, align 8
  %82 = getelementptr inbounds %struct.slim_sched, %struct.slim_sched* %81, i32 0, i32 0
  store i64 %80, i64* %82, align 8
  br label %83

83:                                               ; preds = %79, %76
  %84 = load %struct.slim_sched*, %struct.slim_sched** %11, align 8
  %85 = getelementptr inbounds %struct.slim_sched, %struct.slim_sched* %84, i32 0, i32 1
  %86 = call i32 @mutex_unlock(i32* %85)
  %87 = load i32, i32* %9, align 4
  store i32 %87, i32* %4, align 4
  br label %175

88:                                               ; preds = %29
  %89 = load %struct.slim_controller*, %struct.slim_controller** %5, align 8
  %90 = getelementptr inbounds %struct.slim_controller, %struct.slim_controller* %89, i32 0, i32 3
  %91 = getelementptr inbounds %struct.slim_sched, %struct.slim_sched* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @SLIM_CLK_PAUSED, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %99

95:                                               ; preds = %88
  %96 = load %struct.slim_sched*, %struct.slim_sched** %11, align 8
  %97 = getelementptr inbounds %struct.slim_sched, %struct.slim_sched* %96, i32 0, i32 1
  %98 = call i32 @mutex_unlock(i32* %97)
  store i32 0, i32* %4, align 4
  br label %175

99:                                               ; preds = %88
  %100 = load %struct.slim_controller*, %struct.slim_controller** %5, align 8
  %101 = getelementptr inbounds %struct.slim_controller, %struct.slim_controller* %100, i32 0, i32 1
  %102 = load i64, i64* %10, align 8
  %103 = call i32 @spin_lock_irqsave(i32* %101, i64 %102)
  store i32 0, i32* %8, align 4
  br label %104

104:                                              ; preds = %125, %99
  %105 = load i32, i32* %8, align 4
  %106 = load i32, i32* @SLIM_MAX_TIDS, align 4
  %107 = icmp slt i32 %105, %106
  br i1 %107, label %108, label %128

108:                                              ; preds = %104
  %109 = load %struct.slim_controller*, %struct.slim_controller** %5, align 8
  %110 = getelementptr inbounds %struct.slim_controller, %struct.slim_controller* %109, i32 0, i32 2
  %111 = load i32, i32* %8, align 4
  %112 = call i64 @idr_find(i32* %110, i32 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %124

114:                                              ; preds = %108
  %115 = load %struct.slim_controller*, %struct.slim_controller** %5, align 8
  %116 = getelementptr inbounds %struct.slim_controller, %struct.slim_controller* %115, i32 0, i32 1
  %117 = load i64, i64* %10, align 8
  %118 = call i32 @spin_unlock_irqrestore(i32* %116, i64 %117)
  %119 = load %struct.slim_sched*, %struct.slim_sched** %11, align 8
  %120 = getelementptr inbounds %struct.slim_sched, %struct.slim_sched* %119, i32 0, i32 1
  %121 = call i32 @mutex_unlock(i32* %120)
  %122 = load i32, i32* @EBUSY, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %4, align 4
  br label %175

124:                                              ; preds = %108
  br label %125

125:                                              ; preds = %124
  %126 = load i32, i32* %8, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %8, align 4
  br label %104

128:                                              ; preds = %104
  %129 = load %struct.slim_controller*, %struct.slim_controller** %5, align 8
  %130 = getelementptr inbounds %struct.slim_controller, %struct.slim_controller* %129, i32 0, i32 1
  %131 = load i64, i64* %10, align 8
  %132 = call i32 @spin_unlock_irqrestore(i32* %130, i64 %131)
  %133 = load i64, i64* @SLIM_CLK_ENTERING_PAUSE, align 8
  %134 = load %struct.slim_sched*, %struct.slim_sched** %11, align 8
  %135 = getelementptr inbounds %struct.slim_sched, %struct.slim_sched* %134, i32 0, i32 0
  store i64 %133, i64* %135, align 8
  %136 = load %struct.slim_controller*, %struct.slim_controller** %5, align 8
  %137 = call i32 @slim_do_transfer(%struct.slim_controller* %136, %struct.TYPE_4__* @txn)
  store i32 %137, i32* %9, align 4
  %138 = load i32, i32* %9, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %128
  br label %156

141:                                              ; preds = %128
  %142 = load i32, i32* @SLIM_MSG_MC_NEXT_PAUSE_CLOCK, align 4
  store i32 %142, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @txn, i32 0, i32 1), align 4
  store i32 4, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @txn, i32 0, i32 0), align 4
  %143 = getelementptr inbounds %struct.slim_val_inf, %struct.slim_val_inf* %12, i32 0, i32 0
  store i32 1, i32* %143, align 8
  %144 = getelementptr inbounds %struct.slim_val_inf, %struct.slim_val_inf* %12, i32 0, i32 1
  store i64* %7, i64** %144, align 8
  %145 = load %struct.slim_controller*, %struct.slim_controller** %5, align 8
  %146 = call i32 @slim_do_transfer(%struct.slim_controller* %145, %struct.TYPE_4__* @txn)
  store i32 %146, i32* %9, align 4
  %147 = load i32, i32* %9, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %141
  br label %156

150:                                              ; preds = %141
  %151 = load i32, i32* @SLIM_MSG_MC_RECONFIGURE_NOW, align 4
  store i32 %151, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @txn, i32 0, i32 1), align 4
  store i32 3, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @txn, i32 0, i32 0), align 4
  %152 = getelementptr inbounds %struct.slim_val_inf, %struct.slim_val_inf* %12, i32 0, i32 0
  store i32 1, i32* %152, align 8
  %153 = getelementptr inbounds %struct.slim_val_inf, %struct.slim_val_inf* %12, i32 0, i32 1
  store i64* null, i64** %153, align 8
  %154 = load %struct.slim_controller*, %struct.slim_controller** %5, align 8
  %155 = call i32 @slim_do_transfer(%struct.slim_controller* %154, %struct.TYPE_4__* @txn)
  store i32 %155, i32* %9, align 4
  br label %156

156:                                              ; preds = %150, %149, %140
  %157 = load i32, i32* %9, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %163

159:                                              ; preds = %156
  %160 = load i64, i64* @SLIM_CLK_ACTIVE, align 8
  %161 = load %struct.slim_sched*, %struct.slim_sched** %11, align 8
  %162 = getelementptr inbounds %struct.slim_sched, %struct.slim_sched* %161, i32 0, i32 0
  store i64 %160, i64* %162, align 8
  br label %170

163:                                              ; preds = %156
  %164 = load i64, i64* @SLIM_CLK_PAUSED, align 8
  %165 = load %struct.slim_sched*, %struct.slim_sched** %11, align 8
  %166 = getelementptr inbounds %struct.slim_sched, %struct.slim_sched* %165, i32 0, i32 0
  store i64 %164, i64* %166, align 8
  %167 = load %struct.slim_sched*, %struct.slim_sched** %11, align 8
  %168 = getelementptr inbounds %struct.slim_sched, %struct.slim_sched* %167, i32 0, i32 2
  %169 = call i32 @complete(i32* %168)
  br label %170

170:                                              ; preds = %163, %159
  %171 = load %struct.slim_sched*, %struct.slim_sched** %11, align 8
  %172 = getelementptr inbounds %struct.slim_sched, %struct.slim_sched* %171, i32 0, i32 1
  %173 = call i32 @mutex_unlock(i32* %172)
  %174 = load i32, i32* %9, align 4
  store i32 %174, i32* %4, align 4
  br label %175

175:                                              ; preds = %170, %114, %95, %83, %52, %41, %26
  %176 = load i32, i32* %4, align 4
  ret i32 %176
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @DEFINE_SLIM_BCAST_TXN(i64, i32, i32, i32, %struct.slim_val_inf*) #2

declare dso_local i32 @mutex_lock(i32*) #2

declare dso_local i32 @mutex_unlock(i32*) #2

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #2

declare dso_local i32 @msecs_to_jiffies(i32) #2

declare dso_local i32 @pr_err(i8*) #2

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #2

declare dso_local i64 @idr_find(i32*, i32) #2

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #2

declare dso_local i32 @slim_do_transfer(%struct.slim_controller*, %struct.TYPE_4__*) #2

declare dso_local i32 @complete(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
