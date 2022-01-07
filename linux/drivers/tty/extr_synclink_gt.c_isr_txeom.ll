; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_synclink_gt.c_isr_txeom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_synclink_gt.c_isr_txeom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slgt_info = type { i32, i32, i32, %struct.TYPE_8__, i64, i32, %struct.TYPE_6__, i32, %struct.TYPE_5__, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, i64 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"%s txeom status=%04x\0A\00", align 1
@IRQ_TXDATA = common dso_local global i64 0, align 8
@IRQ_TXIDLE = common dso_local global i16 0, align 2
@IRQ_TXUNDER = common dso_local global i16 0, align 2
@TCR = common dso_local global i32 0, align 4
@BIT2 = common dso_local global i16 0, align 2
@MGSL_MODE_ASYNC = common dso_local global i64 0, align 8
@SerialSignal_RTS = common dso_local global i32 0, align 4
@BH_TRANSMIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.slgt_info*, i16)* @isr_txeom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isr_txeom(%struct.slgt_info* %0, i16 zeroext %1) #0 {
  %3 = alloca %struct.slgt_info*, align 8
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  store %struct.slgt_info* %0, %struct.slgt_info** %3, align 8
  store i16 %1, i16* %4, align 2
  %6 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %7 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %6, i32 0, i32 9
  %8 = load i32, i32* %7, align 4
  %9 = load i16, i16* %4, align 2
  %10 = zext i16 %9 to i64
  %11 = inttoptr i64 %10 to i8*
  %12 = call i32 @DBGISR(i8* %11)
  %13 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %14 = load i64, i64* @IRQ_TXDATA, align 8
  %15 = load i16, i16* @IRQ_TXIDLE, align 2
  %16 = zext i16 %15 to i64
  %17 = add nsw i64 %14, %16
  %18 = load i16, i16* @IRQ_TXUNDER, align 2
  %19 = zext i16 %18 to i64
  %20 = add nsw i64 %17, %19
  %21 = call i32 @slgt_irq_off(%struct.slgt_info* %13, i64 %20)
  %22 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %23 = call i32 @tdma_reset(%struct.slgt_info* %22)
  %24 = load i16, i16* %4, align 2
  %25 = zext i16 %24 to i32
  %26 = load i16, i16* @IRQ_TXUNDER, align 2
  %27 = zext i16 %26 to i32
  %28 = and i32 %25, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %47

30:                                               ; preds = %2
  %31 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %32 = load i32, i32* @TCR, align 4
  %33 = call zeroext i16 @rd_reg16(%struct.slgt_info* %31, i32 %32)
  store i16 %33, i16* %5, align 2
  %34 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %35 = load i32, i32* @TCR, align 4
  %36 = load i16, i16* %5, align 2
  %37 = zext i16 %36 to i32
  %38 = load i16, i16* @BIT2, align 2
  %39 = zext i16 %38 to i32
  %40 = or i32 %37, %39
  %41 = trunc i32 %40 to i16
  %42 = call i32 @wr_reg16(%struct.slgt_info* %34, i32 %35, i16 zeroext %41)
  %43 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %44 = load i32, i32* @TCR, align 4
  %45 = load i16, i16* %5, align 2
  %46 = call i32 @wr_reg16(%struct.slgt_info* %43, i32 %44, i16 zeroext %45)
  br label %47

47:                                               ; preds = %30, %2
  %48 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %49 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %155

52:                                               ; preds = %47
  %53 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %54 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %53, i32 0, i32 6
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @MGSL_MODE_ASYNC, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %87

59:                                               ; preds = %52
  %60 = load i16, i16* %4, align 2
  %61 = zext i16 %60 to i32
  %62 = load i16, i16* @IRQ_TXUNDER, align 2
  %63 = zext i16 %62 to i32
  %64 = and i32 %61, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %59
  %67 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %68 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %67, i32 0, i32 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %69, align 4
  br label %86

72:                                               ; preds = %59
  %73 = load i16, i16* %4, align 2
  %74 = zext i16 %73 to i32
  %75 = load i16, i16* @IRQ_TXIDLE, align 2
  %76 = zext i16 %75 to i32
  %77 = and i32 %74, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %72
  %80 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %81 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %80, i32 0, i32 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %82, align 4
  br label %85

85:                                               ; preds = %79, %72
  br label %86

86:                                               ; preds = %85, %66
  br label %87

87:                                               ; preds = %86, %52
  %88 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %89 = call i64 @unsent_tbufs(%struct.slgt_info* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %87
  %92 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %93 = call i32 @tx_start(%struct.slgt_info* %92)
  %94 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %95 = call i32 @update_tx_timer(%struct.slgt_info* %94)
  br label %155

96:                                               ; preds = %87
  %97 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %98 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %97, i32 0, i32 0
  store i32 0, i32* %98, align 8
  %99 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %100 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %99, i32 0, i32 7
  %101 = call i32 @del_timer(i32* %100)
  %102 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %103 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %102, i32 0, i32 6
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @MGSL_MODE_ASYNC, align 8
  %107 = icmp ne i64 %105, %106
  br i1 %107, label %108, label %124

108:                                              ; preds = %96
  %109 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %110 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %124

113:                                              ; preds = %108
  %114 = load i32, i32* @SerialSignal_RTS, align 4
  %115 = xor i32 %114, -1
  %116 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %117 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %116, i32 0, i32 5
  %118 = load i32, i32* %117, align 8
  %119 = and i32 %118, %115
  store i32 %119, i32* %117, align 8
  %120 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %121 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %120, i32 0, i32 1
  store i32 0, i32* %121, align 4
  %122 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %123 = call i32 @set_signals(%struct.slgt_info* %122)
  br label %124

124:                                              ; preds = %113, %108, %96
  %125 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %126 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %125, i32 0, i32 3
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 0
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %127, align 8
  %129 = icmp ne %struct.TYPE_7__* %128, null
  br i1 %129, label %130, label %149

130:                                              ; preds = %124
  %131 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %132 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %131, i32 0, i32 3
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 0
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %146, label %138

138:                                              ; preds = %130
  %139 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %140 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %139, i32 0, i32 3
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 0
  %142 = load %struct.TYPE_7__*, %struct.TYPE_7__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %138, %130
  %147 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %148 = call i32 @tx_stop(%struct.slgt_info* %147)
  br label %155

149:                                              ; preds = %138, %124
  %150 = load i32, i32* @BH_TRANSMIT, align 4
  %151 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %152 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = or i32 %153, %150
  store i32 %154, i32* %152, align 8
  br label %155

155:                                              ; preds = %91, %146, %149, %47
  ret void
}

declare dso_local i32 @DBGISR(i8*) #1

declare dso_local i32 @slgt_irq_off(%struct.slgt_info*, i64) #1

declare dso_local i32 @tdma_reset(%struct.slgt_info*) #1

declare dso_local zeroext i16 @rd_reg16(%struct.slgt_info*, i32) #1

declare dso_local i32 @wr_reg16(%struct.slgt_info*, i32, i16 zeroext) #1

declare dso_local i64 @unsent_tbufs(%struct.slgt_info*) #1

declare dso_local i32 @tx_start(%struct.slgt_info*) #1

declare dso_local i32 @update_tx_timer(%struct.slgt_info*) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @set_signals(%struct.slgt_info*) #1

declare dso_local i32 @tx_stop(%struct.slgt_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
