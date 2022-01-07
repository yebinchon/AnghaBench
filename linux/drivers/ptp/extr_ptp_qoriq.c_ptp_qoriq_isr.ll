; ModuleID = '/home/carl/AnghaBench/linux/drivers/ptp/extr_ptp_qoriq.c_ptp_qoriq_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ptp/extr_ptp_qoriq.c_ptp_qoriq_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ptp_qoriq = type { i32 (i32*)*, i32, i32, i32 (i32*, i32)*, i32, i32, %struct.ptp_qoriq_registers }
%struct.ptp_qoriq_registers = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.ptp_clock_event = type { i32, i32, i64 }

@ETS1 = common dso_local global i32 0, align 4
@ETS2 = common dso_local global i32 0, align 4
@ALM2 = common dso_local global i32 0, align 4
@PTP_CLOCK_ALARM = common dso_local global i32 0, align 4
@ALM2EN = common dso_local global i32 0, align 4
@PP1 = common dso_local global i32 0, align 4
@PTP_CLOCK_PPS = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ptp_qoriq_isr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ptp_qoriq*, align 8
  %7 = alloca %struct.ptp_qoriq_registers*, align 8
  %8 = alloca %struct.ptp_clock_event, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = bitcast i8* %16 to %struct.ptp_qoriq*
  store %struct.ptp_qoriq* %17, %struct.ptp_qoriq** %6, align 8
  %18 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %6, align 8
  %19 = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %18, i32 0, i32 6
  store %struct.ptp_qoriq_registers* %19, %struct.ptp_qoriq_registers** %7, align 8
  store i32 0, i32* %10, align 4
  %20 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %6, align 8
  %21 = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %20, i32 0, i32 5
  %22 = call i32 @spin_lock(i32* %21)
  %23 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %6, align 8
  %24 = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %23, i32 0, i32 0
  %25 = load i32 (i32*)*, i32 (i32*)** %24, align 8
  %26 = load %struct.ptp_qoriq_registers*, %struct.ptp_qoriq_registers** %7, align 8
  %27 = getelementptr inbounds %struct.ptp_qoriq_registers, %struct.ptp_qoriq_registers* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = call i32 %25(i32* %29)
  store i32 %30, i32* %14, align 4
  %31 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %6, align 8
  %32 = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %31, i32 0, i32 0
  %33 = load i32 (i32*)*, i32 (i32*)** %32, align 8
  %34 = load %struct.ptp_qoriq_registers*, %struct.ptp_qoriq_registers** %7, align 8
  %35 = getelementptr inbounds %struct.ptp_qoriq_registers, %struct.ptp_qoriq_registers* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = call i32 %33(i32* %37)
  store i32 %38, i32* %13, align 4
  %39 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %6, align 8
  %40 = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %39, i32 0, i32 5
  %41 = call i32 @spin_unlock(i32* %40)
  %42 = load i32, i32* %14, align 4
  %43 = load i32, i32* %13, align 4
  %44 = and i32 %42, %43
  store i32 %44, i32* %15, align 4
  %45 = load i32, i32* %15, align 4
  %46 = load i32, i32* @ETS1, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %2
  %50 = load i32, i32* @ETS1, align 4
  %51 = load i32, i32* %10, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %10, align 4
  %53 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %6, align 8
  %54 = call i32 @extts_clean_up(%struct.ptp_qoriq* %53, i32 0, i32 1)
  br label %55

55:                                               ; preds = %49, %2
  %56 = load i32, i32* %15, align 4
  %57 = load i32, i32* @ETS2, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %55
  %61 = load i32, i32* @ETS2, align 4
  %62 = load i32, i32* %10, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %10, align 4
  %64 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %6, align 8
  %65 = call i32 @extts_clean_up(%struct.ptp_qoriq* %64, i32 1, i32 1)
  br label %66

66:                                               ; preds = %60, %55
  %67 = load i32, i32* %15, align 4
  %68 = load i32, i32* @ALM2, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %161

71:                                               ; preds = %66
  %72 = load i32, i32* @ALM2, align 4
  %73 = load i32, i32* %10, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %10, align 4
  %75 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %6, align 8
  %76 = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %91

79:                                               ; preds = %71
  %80 = load i32, i32* @PTP_CLOCK_ALARM, align 4
  %81 = getelementptr inbounds %struct.ptp_clock_event, %struct.ptp_clock_event* %8, i32 0, i32 1
  store i32 %80, i32* %81, align 4
  %82 = getelementptr inbounds %struct.ptp_clock_event, %struct.ptp_clock_event* %8, i32 0, i32 2
  store i64 0, i64* %82, align 8
  %83 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %6, align 8
  %84 = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = getelementptr inbounds %struct.ptp_clock_event, %struct.ptp_clock_event* %8, i32 0, i32 0
  store i32 %85, i32* %86, align 8
  %87 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %6, align 8
  %88 = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @ptp_clock_event(i32 %89, %struct.ptp_clock_event* %8)
  br label %91

91:                                               ; preds = %79, %71
  %92 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %6, align 8
  %93 = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %128

96:                                               ; preds = %91
  %97 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %6, align 8
  %98 = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %6, align 8
  %101 = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = add nsw i32 %99, %102
  store i32 %103, i32* %9, align 4
  %104 = load i32, i32* %9, align 4
  %105 = ashr i32 %104, 32
  store i32 %105, i32* %12, align 4
  %106 = load i32, i32* %9, align 4
  store i32 %106, i32* %11, align 4
  %107 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %6, align 8
  %108 = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %107, i32 0, i32 3
  %109 = load i32 (i32*, i32)*, i32 (i32*, i32)** %108, align 8
  %110 = load %struct.ptp_qoriq_registers*, %struct.ptp_qoriq_registers** %7, align 8
  %111 = getelementptr inbounds %struct.ptp_qoriq_registers, %struct.ptp_qoriq_registers* %110, i32 0, i32 1
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 1
  %114 = load i32, i32* %11, align 4
  %115 = call i32 %109(i32* %113, i32 %114)
  %116 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %6, align 8
  %117 = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %116, i32 0, i32 3
  %118 = load i32 (i32*, i32)*, i32 (i32*, i32)** %117, align 8
  %119 = load %struct.ptp_qoriq_registers*, %struct.ptp_qoriq_registers** %7, align 8
  %120 = getelementptr inbounds %struct.ptp_qoriq_registers, %struct.ptp_qoriq_registers* %119, i32 0, i32 1
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 0
  %123 = load i32, i32* %12, align 4
  %124 = call i32 %118(i32* %122, i32 %123)
  %125 = load i32, i32* %9, align 4
  %126 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %6, align 8
  %127 = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %126, i32 0, i32 1
  store i32 %125, i32* %127, align 8
  br label %160

128:                                              ; preds = %91
  %129 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %6, align 8
  %130 = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %129, i32 0, i32 5
  %131 = call i32 @spin_lock(i32* %130)
  %132 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %6, align 8
  %133 = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %132, i32 0, i32 0
  %134 = load i32 (i32*)*, i32 (i32*)** %133, align 8
  %135 = load %struct.ptp_qoriq_registers*, %struct.ptp_qoriq_registers** %7, align 8
  %136 = getelementptr inbounds %struct.ptp_qoriq_registers, %struct.ptp_qoriq_registers* %135, i32 0, i32 0
  %137 = load %struct.TYPE_4__*, %struct.TYPE_4__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 1
  %139 = call i32 %134(i32* %138)
  store i32 %139, i32* %13, align 4
  %140 = load i32, i32* @ALM2EN, align 4
  %141 = xor i32 %140, -1
  %142 = load i32, i32* %13, align 4
  %143 = and i32 %142, %141
  store i32 %143, i32* %13, align 4
  %144 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %6, align 8
  %145 = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %144, i32 0, i32 3
  %146 = load i32 (i32*, i32)*, i32 (i32*, i32)** %145, align 8
  %147 = load %struct.ptp_qoriq_registers*, %struct.ptp_qoriq_registers** %7, align 8
  %148 = getelementptr inbounds %struct.ptp_qoriq_registers, %struct.ptp_qoriq_registers* %147, i32 0, i32 0
  %149 = load %struct.TYPE_4__*, %struct.TYPE_4__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 1
  %151 = load i32, i32* %13, align 4
  %152 = call i32 %146(i32* %150, i32 %151)
  %153 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %6, align 8
  %154 = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %153, i32 0, i32 5
  %155 = call i32 @spin_unlock(i32* %154)
  %156 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %6, align 8
  %157 = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %156, i32 0, i32 1
  store i32 0, i32* %157, align 8
  %158 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %6, align 8
  %159 = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %158, i32 0, i32 2
  store i32 0, i32* %159, align 4
  br label %160

160:                                              ; preds = %128, %96
  br label %161

161:                                              ; preds = %160, %66
  %162 = load i32, i32* %15, align 4
  %163 = load i32, i32* @PP1, align 4
  %164 = and i32 %162, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %176

166:                                              ; preds = %161
  %167 = load i32, i32* @PP1, align 4
  %168 = load i32, i32* %10, align 4
  %169 = or i32 %168, %167
  store i32 %169, i32* %10, align 4
  %170 = load i32, i32* @PTP_CLOCK_PPS, align 4
  %171 = getelementptr inbounds %struct.ptp_clock_event, %struct.ptp_clock_event* %8, i32 0, i32 1
  store i32 %170, i32* %171, align 4
  %172 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %6, align 8
  %173 = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %172, i32 0, i32 4
  %174 = load i32, i32* %173, align 8
  %175 = call i32 @ptp_clock_event(i32 %174, %struct.ptp_clock_event* %8)
  br label %176

176:                                              ; preds = %166, %161
  %177 = load i32, i32* %10, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %190

179:                                              ; preds = %176
  %180 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %6, align 8
  %181 = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %180, i32 0, i32 3
  %182 = load i32 (i32*, i32)*, i32 (i32*, i32)** %181, align 8
  %183 = load %struct.ptp_qoriq_registers*, %struct.ptp_qoriq_registers** %7, align 8
  %184 = getelementptr inbounds %struct.ptp_qoriq_registers, %struct.ptp_qoriq_registers* %183, i32 0, i32 0
  %185 = load %struct.TYPE_4__*, %struct.TYPE_4__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %185, i32 0, i32 0
  %187 = load i32, i32* %10, align 4
  %188 = call i32 %182(i32* %186, i32 %187)
  %189 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %189, i32* %3, align 4
  br label %192

190:                                              ; preds = %176
  %191 = load i32, i32* @IRQ_NONE, align 4
  store i32 %191, i32* %3, align 4
  br label %192

192:                                              ; preds = %190, %179
  %193 = load i32, i32* %3, align 4
  ret i32 %193
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @extts_clean_up(%struct.ptp_qoriq*, i32, i32) #1

declare dso_local i32 @ptp_clock_event(i32, %struct.ptp_clock_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
