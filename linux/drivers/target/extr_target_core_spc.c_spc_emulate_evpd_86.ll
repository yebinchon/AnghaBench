; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_spc.c_spc_emulate_evpd_86.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_spc.c_spc_emulate_evpd_86.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_cmd = type { %struct.se_device*, %struct.se_session* }
%struct.se_device = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i64 (%struct.se_device*)* }
%struct.se_session = type { i32, i64 }

@TARGET_PROT_DIN_PASS = common dso_local global i32 0, align 4
@TARGET_PROT_DOUT_PASS = common dso_local global i32 0, align 4
@TARGET_DIF_TYPE1_PROT = common dso_local global i64 0, align 8
@TARGET_DIF_TYPE3_PROT = common dso_local global i64 0, align 8
@TYPE_DISK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.se_cmd*, i8*)* @spc_emulate_evpd_86 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spc_emulate_evpd_86(%struct.se_cmd* %0, i8* %1) #0 {
  %3 = alloca %struct.se_cmd*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.se_device*, align 8
  %6 = alloca %struct.se_session*, align 8
  store %struct.se_cmd* %0, %struct.se_cmd** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %8 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %7, i32 0, i32 0
  %9 = load %struct.se_device*, %struct.se_device** %8, align 8
  store %struct.se_device* %9, %struct.se_device** %5, align 8
  %10 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %11 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %10, i32 0, i32 1
  %12 = load %struct.se_session*, %struct.se_session** %11, align 8
  store %struct.se_session* %12, %struct.se_session** %6, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 3
  store i8 60, i8* %14, align 1
  %15 = load %struct.se_session*, %struct.se_session** %6, align 8
  %16 = getelementptr inbounds %struct.se_session, %struct.se_session* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @TARGET_PROT_DIN_PASS, align 4
  %19 = load i32, i32* @TARGET_PROT_DOUT_PASS, align 4
  %20 = or i32 %18, %19
  %21 = and i32 %17, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %61

23:                                               ; preds = %2
  %24 = load %struct.se_device*, %struct.se_device** %5, align 8
  %25 = getelementptr inbounds %struct.se_device, %struct.se_device* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @TARGET_DIF_TYPE1_PROT, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %38, label %30

30:                                               ; preds = %23
  %31 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %32 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %31, i32 0, i32 1
  %33 = load %struct.se_session*, %struct.se_session** %32, align 8
  %34 = getelementptr inbounds %struct.se_session, %struct.se_session* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @TARGET_DIF_TYPE1_PROT, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %30, %23
  %39 = load i8*, i8** %4, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 4
  store i8 5, i8* %40, align 1
  br label %60

41:                                               ; preds = %30
  %42 = load %struct.se_device*, %struct.se_device** %5, align 8
  %43 = getelementptr inbounds %struct.se_device, %struct.se_device* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @TARGET_DIF_TYPE3_PROT, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %56, label %48

48:                                               ; preds = %41
  %49 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %50 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %49, i32 0, i32 1
  %51 = load %struct.se_session*, %struct.se_session** %50, align 8
  %52 = getelementptr inbounds %struct.se_session, %struct.se_session* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @TARGET_DIF_TYPE3_PROT, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %48, %41
  %57 = load i8*, i8** %4, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 4
  store i8 4, i8* %58, align 1
  br label %59

59:                                               ; preds = %56, %48
  br label %60

60:                                               ; preds = %59, %38
  br label %61

61:                                               ; preds = %60, %2
  %62 = load %struct.se_device*, %struct.se_device** %5, align 8
  %63 = getelementptr inbounds %struct.se_device, %struct.se_device* %62, i32 0, i32 2
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i64 (%struct.se_device*)*, i64 (%struct.se_device*)** %65, align 8
  %67 = load %struct.se_device*, %struct.se_device** %5, align 8
  %68 = call i64 %66(%struct.se_device* %67)
  %69 = load i64, i64* @TYPE_DISK, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %100

71:                                               ; preds = %61
  %72 = load %struct.se_session*, %struct.se_session** %6, align 8
  %73 = getelementptr inbounds %struct.se_session, %struct.se_session* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @TARGET_PROT_DIN_PASS, align 4
  %76 = load i32, i32* @TARGET_PROT_DOUT_PASS, align 4
  %77 = or i32 %75, %76
  %78 = and i32 %74, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %100

80:                                               ; preds = %71
  %81 = load %struct.se_device*, %struct.se_device** %5, align 8
  %82 = getelementptr inbounds %struct.se_device, %struct.se_device* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %93, label %86

86:                                               ; preds = %80
  %87 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %88 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %87, i32 0, i32 1
  %89 = load %struct.se_session*, %struct.se_session** %88, align 8
  %90 = getelementptr inbounds %struct.se_session, %struct.se_session* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %100

93:                                               ; preds = %86, %80
  %94 = load i8*, i8** %4, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 4
  %96 = load i8, i8* %95, align 1
  %97 = zext i8 %96 to i32
  %98 = or i32 %97, 24
  %99 = trunc i32 %98 to i8
  store i8 %99, i8* %95, align 1
  br label %100

100:                                              ; preds = %93, %86, %71, %61
  %101 = load i8*, i8** %4, align 8
  %102 = getelementptr inbounds i8, i8* %101, i64 5
  store i8 7, i8* %102, align 1
  %103 = load %struct.se_device*, %struct.se_device** %5, align 8
  %104 = call i64 @target_check_wce(%struct.se_device* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %100
  %107 = load i8*, i8** %4, align 8
  %108 = getelementptr inbounds i8, i8* %107, i64 6
  store i8 1, i8* %108, align 1
  br label %109

109:                                              ; preds = %106, %100
  %110 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %111 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %110, i32 0, i32 0
  %112 = load %struct.se_device*, %struct.se_device** %111, align 8
  %113 = getelementptr inbounds %struct.se_device, %struct.se_device* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 0
  %115 = call i32 @spin_lock(i32* %114)
  %116 = load %struct.se_device*, %struct.se_device** %5, align 8
  %117 = getelementptr inbounds %struct.se_device, %struct.se_device* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 1
  %119 = call i32 @list_empty(i32* %118)
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %124, label %121

121:                                              ; preds = %109
  %122 = load i8*, i8** %4, align 8
  %123 = getelementptr inbounds i8, i8* %122, i64 8
  store i8 16, i8* %123, align 1
  br label %124

124:                                              ; preds = %121, %109
  %125 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %126 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %125, i32 0, i32 0
  %127 = load %struct.se_device*, %struct.se_device** %126, align 8
  %128 = getelementptr inbounds %struct.se_device, %struct.se_device* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 0
  %130 = call i32 @spin_unlock(i32* %129)
  ret i32 0
}

declare dso_local i64 @target_check_wce(%struct.se_device*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
