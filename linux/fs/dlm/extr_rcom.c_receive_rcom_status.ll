; ModuleID = '/home/carl/AnghaBench/linux/fs/dlm/extr_rcom.c_receive_rcom_status.c'
source_filename = "/home/carl/AnghaBench/linux/fs/dlm/extr_rcom.c_receive_rcom_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ls = type { i32, i32, i64 }
%struct.dlm_rcom = type { i64, i64, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.dlm_mhandle = type { i32 }
%struct.rcom_status = type { i32 }
%struct.rcom_config = type { i32 }

@DLM_RSF_NEED_SLOTS = common dso_local global i32 0, align 4
@DLM_RCOM_STATUS_REPLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"receive_rcom_status num_slots %d to %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dlm_ls*, %struct.dlm_rcom*)* @receive_rcom_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @receive_rcom_status(%struct.dlm_ls* %0, %struct.dlm_rcom* %1) #0 {
  %3 = alloca %struct.dlm_ls*, align 8
  %4 = alloca %struct.dlm_rcom*, align 8
  %5 = alloca %struct.dlm_rcom*, align 8
  %6 = alloca %struct.dlm_mhandle*, align 8
  %7 = alloca %struct.rcom_status*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.dlm_ls* %0, %struct.dlm_ls** %3, align 8
  store %struct.dlm_rcom* %1, %struct.dlm_rcom** %4, align 8
  %13 = load %struct.dlm_rcom*, %struct.dlm_rcom** %4, align 8
  %14 = getelementptr inbounds %struct.dlm_rcom, %struct.dlm_rcom* %13, i32 0, i32 5
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %9, align 4
  store i32 4, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %17 = load %struct.dlm_rcom*, %struct.dlm_rcom** %4, align 8
  %18 = getelementptr inbounds %struct.dlm_rcom, %struct.dlm_rcom* %17, i32 0, i32 5
  %19 = call i32 @dlm_slots_version(%struct.TYPE_2__* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %23 = call i64 @dlm_recover_status(%struct.dlm_ls* %22)
  store i64 %23, i64* %8, align 8
  br label %59

24:                                               ; preds = %2
  %25 = load %struct.dlm_rcom*, %struct.dlm_rcom** %4, align 8
  %26 = getelementptr inbounds %struct.dlm_rcom, %struct.dlm_rcom* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to %struct.rcom_status*
  store %struct.rcom_status* %28, %struct.rcom_status** %7, align 8
  %29 = load %struct.rcom_status*, %struct.rcom_status** %7, align 8
  %30 = getelementptr inbounds %struct.rcom_status, %struct.rcom_status* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @le32_to_cpu(i32 %31)
  %33 = load i32, i32* @DLM_RSF_NEED_SLOTS, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %24
  %37 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %38 = call i64 @dlm_recover_status(%struct.dlm_ls* %37)
  store i64 %38, i64* %8, align 8
  br label %59

39:                                               ; preds = %24
  %40 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %41 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %40, i32 0, i32 1
  %42 = call i32 @spin_lock(i32* %41)
  %43 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %44 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* %8, align 8
  %46 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %47 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  store i32 %48, i32* %11, align 4
  %49 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %50 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %49, i32 0, i32 1
  %51 = call i32 @spin_unlock(i32* %50)
  %52 = load i32, i32* %11, align 4
  %53 = sext i32 %52 to i64
  %54 = mul i64 %53, 4
  %55 = load i32, i32* %10, align 4
  %56 = sext i32 %55 to i64
  %57 = add i64 %56, %54
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %10, align 4
  br label %59

59:                                               ; preds = %39, %36, %21
  %60 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* @DLM_RCOM_STATUS_REPLY, align 4
  %63 = load i32, i32* %10, align 4
  %64 = call i32 @create_rcom(%struct.dlm_ls* %60, i32 %61, i32 %62, i32 %63, %struct.dlm_rcom** %5, %struct.dlm_mhandle** %6)
  store i32 %64, i32* %12, align 4
  %65 = load i32, i32* %12, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %59
  br label %131

68:                                               ; preds = %59
  %69 = load %struct.dlm_rcom*, %struct.dlm_rcom** %4, align 8
  %70 = getelementptr inbounds %struct.dlm_rcom, %struct.dlm_rcom* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.dlm_rcom*, %struct.dlm_rcom** %5, align 8
  %73 = getelementptr inbounds %struct.dlm_rcom, %struct.dlm_rcom* %72, i32 0, i32 4
  store i32 %71, i32* %73, align 8
  %74 = load %struct.dlm_rcom*, %struct.dlm_rcom** %4, align 8
  %75 = getelementptr inbounds %struct.dlm_rcom, %struct.dlm_rcom* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.dlm_rcom*, %struct.dlm_rcom** %5, align 8
  %78 = getelementptr inbounds %struct.dlm_rcom, %struct.dlm_rcom* %77, i32 0, i32 3
  store i32 %76, i32* %78, align 4
  %79 = load i64, i64* %8, align 8
  %80 = load %struct.dlm_rcom*, %struct.dlm_rcom** %5, align 8
  %81 = getelementptr inbounds %struct.dlm_rcom, %struct.dlm_rcom* %80, i32 0, i32 1
  store i64 %79, i64* %81, align 8
  %82 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %83 = load %struct.dlm_rcom*, %struct.dlm_rcom** %5, align 8
  %84 = getelementptr inbounds %struct.dlm_rcom, %struct.dlm_rcom* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = inttoptr i64 %85 to %struct.rcom_config*
  %87 = load i32, i32* %11, align 4
  %88 = call i32 @set_rcom_config(%struct.dlm_ls* %82, %struct.rcom_config* %86, i32 %87)
  %89 = load i32, i32* %11, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %92, label %91

91:                                               ; preds = %68
  br label %126

92:                                               ; preds = %68
  %93 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %94 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %93, i32 0, i32 1
  %95 = call i32 @spin_lock(i32* %94)
  %96 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %97 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* %11, align 4
  %100 = icmp ne i32 %98, %99
  br i1 %100, label %101, label %119

101:                                              ; preds = %92
  %102 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %103 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %102, i32 0, i32 1
  %104 = call i32 @spin_unlock(i32* %103)
  %105 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %106 = load i32, i32* %11, align 4
  %107 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %108 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @log_debug(%struct.dlm_ls* %105, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %106, i32 %109)
  %111 = load %struct.dlm_rcom*, %struct.dlm_rcom** %5, align 8
  %112 = getelementptr inbounds %struct.dlm_rcom, %struct.dlm_rcom* %111, i32 0, i32 1
  store i64 0, i64* %112, align 8
  %113 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %114 = load %struct.dlm_rcom*, %struct.dlm_rcom** %5, align 8
  %115 = getelementptr inbounds %struct.dlm_rcom, %struct.dlm_rcom* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = inttoptr i64 %116 to %struct.rcom_config*
  %118 = call i32 @set_rcom_config(%struct.dlm_ls* %113, %struct.rcom_config* %117, i32 0)
  br label %126

119:                                              ; preds = %92
  %120 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %121 = load %struct.dlm_rcom*, %struct.dlm_rcom** %5, align 8
  %122 = call i32 @dlm_slots_copy_out(%struct.dlm_ls* %120, %struct.dlm_rcom* %121)
  %123 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %124 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %123, i32 0, i32 1
  %125 = call i32 @spin_unlock(i32* %124)
  br label %126

126:                                              ; preds = %119, %101, %91
  %127 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %128 = load %struct.dlm_mhandle*, %struct.dlm_mhandle** %6, align 8
  %129 = load %struct.dlm_rcom*, %struct.dlm_rcom** %5, align 8
  %130 = call i32 @send_rcom(%struct.dlm_ls* %127, %struct.dlm_mhandle* %128, %struct.dlm_rcom* %129)
  br label %131

131:                                              ; preds = %126, %67
  ret void
}

declare dso_local i32 @dlm_slots_version(%struct.TYPE_2__*) #1

declare dso_local i64 @dlm_recover_status(%struct.dlm_ls*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @create_rcom(%struct.dlm_ls*, i32, i32, i32, %struct.dlm_rcom**, %struct.dlm_mhandle**) #1

declare dso_local i32 @set_rcom_config(%struct.dlm_ls*, %struct.rcom_config*, i32) #1

declare dso_local i32 @log_debug(%struct.dlm_ls*, i8*, i32, i32) #1

declare dso_local i32 @dlm_slots_copy_out(%struct.dlm_ls*, %struct.dlm_rcom*) #1

declare dso_local i32 @send_rcom(%struct.dlm_ls*, %struct.dlm_mhandle*, %struct.dlm_rcom*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
