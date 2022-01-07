; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/events/extr_events_2l.c_evtchn_2l_handle_events.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/events/extr_events_2l.c_evtchn_2l_handle_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shared_info = type { i32 }
%struct.vcpu_info = type { i32 }

@HYPERVISOR_shared_info = common dso_local global %struct.shared_info* null, align 8
@xen_vcpu = common dso_local global i32 0, align 4
@VIRQ_TIMER = common dso_local global i32 0, align 4
@BITS_PER_LONG = common dso_local global i32 0, align 4
@current_word_idx = common dso_local global i32 0, align 4
@current_bit_idx = common dso_local global i32 0, align 4
@BITS_PER_EVTCHN_WORD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @evtchn_2l_handle_events to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @evtchn_2l_handle_events(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.shared_info*, align 8
  %12 = alloca %struct.vcpu_info*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %17 = load %struct.shared_info*, %struct.shared_info** @HYPERVISOR_shared_info, align 8
  store %struct.shared_info* %17, %struct.shared_info** %11, align 8
  %18 = load i32, i32* @xen_vcpu, align 4
  %19 = call i8* @__this_cpu_read(i32 %18)
  %20 = bitcast i8* %19 to %struct.vcpu_info*
  store %struct.vcpu_info* %20, %struct.vcpu_info** %12, align 8
  %21 = load i32, i32* %2, align 4
  %22 = load i32, i32* @VIRQ_TIMER, align 4
  %23 = call i32 @irq_from_virq(i32 %21, i32 %22)
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* %3, align 4
  %25 = icmp ne i32 %24, -1
  br i1 %25, label %26, label %48

26:                                               ; preds = %1
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @evtchn_from_irq(i32 %27)
  store i32 %28, i32* %13, align 4
  %29 = load i32, i32* %13, align 4
  %30 = load i32, i32* @BITS_PER_LONG, align 4
  %31 = udiv i32 %29, %30
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %13, align 4
  %33 = load i32, i32* @BITS_PER_LONG, align 4
  %34 = urem i32 %32, %33
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %2, align 4
  %36 = load %struct.shared_info*, %struct.shared_info** %11, align 8
  %37 = load i32, i32* %8, align 4
  %38 = call i64 @active_evtchns(i32 %35, %struct.shared_info* %36, i32 %37)
  %39 = load i32, i32* %9, align 4
  %40 = zext i32 %39 to i64
  %41 = shl i64 1, %40
  %42 = and i64 %38, %41
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %26
  %45 = load i32, i32* %3, align 4
  %46 = call i32 @generic_handle_irq(i32 %45)
  br label %47

47:                                               ; preds = %44, %26
  br label %48

48:                                               ; preds = %47, %1
  %49 = load %struct.vcpu_info*, %struct.vcpu_info** %12, align 8
  %50 = getelementptr inbounds %struct.vcpu_info, %struct.vcpu_info* %49, i32 0, i32 0
  %51 = call i64 @xchg_xen_ulong(i32* %50, i32 0)
  store i64 %51, i64* %4, align 8
  %52 = load i32, i32* @current_word_idx, align 4
  %53 = call i8* @__this_cpu_read(i32 %52)
  %54 = ptrtoint i8* %53 to i32
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* @current_bit_idx, align 4
  %56 = call i8* @__this_cpu_read(i32 %55)
  %57 = ptrtoint i8* %56 to i32
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %6, align 4
  store i32 %58, i32* %8, align 4
  store i32 0, i32* %10, align 4
  br label %59

59:                                               ; preds = %151, %48
  %60 = load i64, i64* %4, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %154

62:                                               ; preds = %59
  %63 = load i64, i64* %4, align 8
  %64 = load i32, i32* %8, align 4
  %65 = call i64 @MASK_LSBS(i64 %63, i32 %64)
  store i64 %65, i64* %14, align 8
  %66 = load i64, i64* %14, align 8
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %62
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %151

69:                                               ; preds = %62
  %70 = load i64, i64* %14, align 8
  %71 = call i32 @EVTCHN_FIRST_BIT(i64 %70)
  store i32 %71, i32* %8, align 4
  %72 = load i32, i32* %2, align 4
  %73 = load %struct.shared_info*, %struct.shared_info** %11, align 8
  %74 = load i32, i32* %8, align 4
  %75 = call i64 @active_evtchns(i32 %72, %struct.shared_info* %73, i32 %74)
  store i64 %75, i64* %5, align 8
  store i32 0, i32* %9, align 4
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* %6, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %85

79:                                               ; preds = %69
  %80 = load i32, i32* %10, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %79
  %83 = load i32, i32* %7, align 4
  store i32 %83, i32* %9, align 4
  br label %84

84:                                               ; preds = %82, %79
  br label %85

85:                                               ; preds = %84, %69
  br label %86

86:                                               ; preds = %129, %85
  %87 = load i64, i64* %5, align 8
  %88 = load i32, i32* %9, align 4
  %89 = call i64 @MASK_LSBS(i64 %87, i32 %88)
  store i64 %89, i64* %15, align 8
  %90 = load i64, i64* %15, align 8
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %86
  br label %132

93:                                               ; preds = %86
  %94 = load i64, i64* %15, align 8
  %95 = call i32 @EVTCHN_FIRST_BIT(i64 %94)
  store i32 %95, i32* %9, align 4
  %96 = load i32, i32* %8, align 4
  %97 = load i32, i32* @BITS_PER_EVTCHN_WORD, align 4
  %98 = mul nsw i32 %96, %97
  %99 = load i32, i32* %9, align 4
  %100 = add nsw i32 %98, %99
  store i32 %100, i32* %16, align 4
  %101 = load i32, i32* %16, align 4
  %102 = call i32 @get_evtchn_to_irq(i32 %101)
  store i32 %102, i32* %3, align 4
  %103 = load i32, i32* %3, align 4
  %104 = icmp ne i32 %103, -1
  br i1 %104, label %105, label %108

105:                                              ; preds = %93
  %106 = load i32, i32* %3, align 4
  %107 = call i32 @generic_handle_irq(i32 %106)
  br label %108

108:                                              ; preds = %105, %93
  %109 = load i32, i32* %9, align 4
  %110 = add nsw i32 %109, 1
  %111 = load i32, i32* @BITS_PER_EVTCHN_WORD, align 4
  %112 = srem i32 %110, %111
  store i32 %112, i32* %9, align 4
  %113 = load i32, i32* @current_word_idx, align 4
  %114 = load i32, i32* %9, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %108
  %117 = load i32, i32* %8, align 4
  br label %123

118:                                              ; preds = %108
  %119 = load i32, i32* %8, align 4
  %120 = add nsw i32 %119, 1
  %121 = load i32, i32* @BITS_PER_EVTCHN_WORD, align 4
  %122 = srem i32 %120, %121
  br label %123

123:                                              ; preds = %118, %116
  %124 = phi i32 [ %117, %116 ], [ %122, %118 ]
  %125 = call i32 @__this_cpu_write(i32 %113, i32 %124)
  %126 = load i32, i32* @current_bit_idx, align 4
  %127 = load i32, i32* %9, align 4
  %128 = call i32 @__this_cpu_write(i32 %126, i32 %127)
  br label %129

129:                                              ; preds = %123
  %130 = load i32, i32* %9, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %86, label %132

132:                                              ; preds = %129, %92
  %133 = load i32, i32* %8, align 4
  %134 = load i32, i32* %6, align 4
  %135 = icmp ne i32 %133, %134
  br i1 %135, label %139, label %136

136:                                              ; preds = %132
  %137 = load i32, i32* %10, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %146

139:                                              ; preds = %136, %132
  %140 = load i32, i32* %8, align 4
  %141 = zext i32 %140 to i64
  %142 = shl i64 1, %141
  %143 = xor i64 %142, -1
  %144 = load i64, i64* %4, align 8
  %145 = and i64 %144, %143
  store i64 %145, i64* %4, align 8
  br label %146

146:                                              ; preds = %139, %136
  %147 = load i32, i32* %8, align 4
  %148 = add nsw i32 %147, 1
  %149 = load i32, i32* @BITS_PER_EVTCHN_WORD, align 4
  %150 = srem i32 %148, %149
  store i32 %150, i32* %8, align 4
  br label %151

151:                                              ; preds = %146, %68
  %152 = load i32, i32* %10, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %10, align 4
  br label %59

154:                                              ; preds = %59
  ret void
}

declare dso_local i8* @__this_cpu_read(i32) #1

declare dso_local i32 @irq_from_virq(i32, i32) #1

declare dso_local i32 @evtchn_from_irq(i32) #1

declare dso_local i64 @active_evtchns(i32, %struct.shared_info*, i32) #1

declare dso_local i32 @generic_handle_irq(i32) #1

declare dso_local i64 @xchg_xen_ulong(i32*, i32) #1

declare dso_local i64 @MASK_LSBS(i64, i32) #1

declare dso_local i32 @EVTCHN_FIRST_BIT(i64) #1

declare dso_local i32 @get_evtchn_to_irq(i32) #1

declare dso_local i32 @__this_cpu_write(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
