; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/events/extr_events_2l.c_evtchn_2l_unmask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/events/extr_events_2l.c_evtchn_2l_unmask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shared_info = type { i32*, i32* }
%struct.evtchn_unmask = type { i32 }
%struct.vcpu_info = type { i32, i32 }

@HYPERVISOR_shared_info = common dso_local global %struct.shared_info* null, align 8
@EVTCHNOP_unmask = common dso_local global i32 0, align 4
@xen_vcpu = common dso_local global i32 0, align 4
@BITS_PER_EVTCHN_WORD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @evtchn_2l_unmask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @evtchn_2l_unmask(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.shared_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.evtchn_unmask, align 4
  %8 = alloca %struct.vcpu_info*, align 8
  store i32 %0, i32* %2, align 4
  %9 = load %struct.shared_info*, %struct.shared_info** @HYPERVISOR_shared_info, align 8
  store %struct.shared_info* %9, %struct.shared_info** %3, align 8
  %10 = call i32 (...) @get_cpu()
  store i32 %10, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %11 = call i32 (...) @irqs_disabled()
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i32 @BUG_ON(i32 %14)
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* %2, align 4
  %18 = call i32 @cpu_from_evtchn(i32 %17)
  %19 = icmp ne i32 %16, %18
  %20 = zext i1 %19 to i32
  %21 = call i64 @unlikely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %1
  store i32 1, i32* %5, align 4
  br label %58

24:                                               ; preds = %1
  %25 = load i32, i32* %2, align 4
  %26 = load %struct.shared_info*, %struct.shared_info** %3, align 8
  %27 = getelementptr inbounds %struct.shared_info, %struct.shared_info* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = call i32 @BM(i32* %29)
  %31 = call i32 @sync_clear_bit(i32 %25, i32 %30)
  %32 = load i32, i32* %2, align 4
  %33 = load %struct.shared_info*, %struct.shared_info** %3, align 8
  %34 = getelementptr inbounds %struct.shared_info, %struct.shared_info* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = call i32 @BM(i32* %36)
  %38 = call i32 @sync_test_bit(i32 %32, i32 %37)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %24
  %42 = call i64 (...) @xen_hvm_domain()
  %43 = icmp ne i64 %42, 0
  br label %44

44:                                               ; preds = %41, %24
  %45 = phi i1 [ false, %24 ], [ %43, %41 ]
  %46 = zext i1 %45 to i32
  %47 = call i64 @unlikely(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %44
  %50 = load i32, i32* %2, align 4
  %51 = load %struct.shared_info*, %struct.shared_info** %3, align 8
  %52 = getelementptr inbounds %struct.shared_info, %struct.shared_info* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  %55 = call i32 @BM(i32* %54)
  %56 = call i32 @sync_set_bit(i32 %50, i32 %55)
  store i32 1, i32* %5, align 4
  br label %57

57:                                               ; preds = %49, %44
  br label %58

58:                                               ; preds = %57, %23
  %59 = load i32, i32* %5, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %58
  %62 = getelementptr inbounds %struct.evtchn_unmask, %struct.evtchn_unmask* %7, i32 0, i32 0
  %63 = load i32, i32* %2, align 4
  store i32 %63, i32* %62, align 4
  %64 = load i32, i32* @EVTCHNOP_unmask, align 4
  %65 = call i32 @HYPERVISOR_event_channel_op(i32 %64, %struct.evtchn_unmask* %7)
  br label %84

66:                                               ; preds = %58
  %67 = load i32, i32* @xen_vcpu, align 4
  %68 = call %struct.vcpu_info* @__this_cpu_read(i32 %67)
  store %struct.vcpu_info* %68, %struct.vcpu_info** %8, align 8
  %69 = load i32, i32* %6, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %83

71:                                               ; preds = %66
  %72 = load i32, i32* %2, align 4
  %73 = load i32, i32* @BITS_PER_EVTCHN_WORD, align 4
  %74 = udiv i32 %72, %73
  %75 = load %struct.vcpu_info*, %struct.vcpu_info** %8, align 8
  %76 = getelementptr inbounds %struct.vcpu_info, %struct.vcpu_info* %75, i32 0, i32 1
  %77 = call i32 @BM(i32* %76)
  %78 = call i32 @sync_test_and_set_bit(i32 %74, i32 %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %71
  %81 = load %struct.vcpu_info*, %struct.vcpu_info** %8, align 8
  %82 = getelementptr inbounds %struct.vcpu_info, %struct.vcpu_info* %81, i32 0, i32 0
  store i32 1, i32* %82, align 4
  br label %83

83:                                               ; preds = %80, %71, %66
  br label %84

84:                                               ; preds = %83, %61
  %85 = call i32 (...) @put_cpu()
  ret void
}

declare dso_local i32 @get_cpu(...) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @irqs_disabled(...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @cpu_from_evtchn(i32) #1

declare dso_local i32 @sync_clear_bit(i32, i32) #1

declare dso_local i32 @BM(i32*) #1

declare dso_local i32 @sync_test_bit(i32, i32) #1

declare dso_local i64 @xen_hvm_domain(...) #1

declare dso_local i32 @sync_set_bit(i32, i32) #1

declare dso_local i32 @HYPERVISOR_event_channel_op(i32, %struct.evtchn_unmask*) #1

declare dso_local %struct.vcpu_info* @__this_cpu_read(i32) #1

declare dso_local i32 @sync_test_and_set_bit(i32, i32) #1

declare dso_local i32 @put_cpu(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
