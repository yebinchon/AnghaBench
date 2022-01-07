; ModuleID = '/home/carl/AnghaBench/linux/fs/dlm/extr_rcom.c_receive_rcom_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/fs/dlm/extr_rcom.c_receive_rcom_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ls = type { i32 }
%struct.dlm_rcom = type { i32, i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.dlm_mhandle = type { i32 }

@DLM_RCOM_LOOKUP_REPLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"receive_rcom_lookup dump from %d\00", align 1
@DLM_LU_RECOVER_MASTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dlm_ls*, %struct.dlm_rcom*)* @receive_rcom_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @receive_rcom_lookup(%struct.dlm_ls* %0, %struct.dlm_rcom* %1) #0 {
  %3 = alloca %struct.dlm_ls*, align 8
  %4 = alloca %struct.dlm_rcom*, align 8
  %5 = alloca %struct.dlm_rcom*, align 8
  %6 = alloca %struct.dlm_mhandle*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.dlm_ls* %0, %struct.dlm_ls** %3, align 8
  store %struct.dlm_rcom* %1, %struct.dlm_rcom** %4, align 8
  %11 = load %struct.dlm_rcom*, %struct.dlm_rcom** %4, align 8
  %12 = getelementptr inbounds %struct.dlm_rcom, %struct.dlm_rcom* %11, i32 0, i32 5
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %9, align 4
  %15 = load %struct.dlm_rcom*, %struct.dlm_rcom** %4, align 8
  %16 = getelementptr inbounds %struct.dlm_rcom, %struct.dlm_rcom* %15, i32 0, i32 5
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = sext i32 %18 to i64
  %20 = sub i64 %19, 28
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %10, align 4
  %22 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @DLM_RCOM_LOOKUP_REPLY, align 4
  %25 = call i32 @create_rcom(%struct.dlm_ls* %22, i32 %23, i32 %24, i32 0, %struct.dlm_rcom** %5, %struct.dlm_mhandle** %6)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %2
  br label %75

29:                                               ; preds = %2
  %30 = load %struct.dlm_rcom*, %struct.dlm_rcom** %4, align 8
  %31 = getelementptr inbounds %struct.dlm_rcom, %struct.dlm_rcom* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %32, -1
  br i1 %33, label %34, label %44

34:                                               ; preds = %29
  %35 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @log_error(%struct.dlm_ls* %35, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %39 = load %struct.dlm_rcom*, %struct.dlm_rcom** %4, align 8
  %40 = getelementptr inbounds %struct.dlm_rcom, %struct.dlm_rcom* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %10, align 4
  %43 = call i32 @dlm_dump_rsb_name(%struct.dlm_ls* %38, i32 %41, i32 %42)
  br label %75

44:                                               ; preds = %29
  %45 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %46 = load i32, i32* %9, align 4
  %47 = load %struct.dlm_rcom*, %struct.dlm_rcom** %4, align 8
  %48 = getelementptr inbounds %struct.dlm_rcom, %struct.dlm_rcom* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* @DLM_LU_RECOVER_MASTER, align 4
  %52 = call i32 @dlm_master_lookup(%struct.dlm_ls* %45, i32 %46, i32 %49, i32 %50, i32 %51, i32* %8, i32* null)
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %44
  %56 = load i32, i32* %7, align 4
  store i32 %56, i32* %8, align 4
  br label %57

57:                                               ; preds = %55, %44
  %58 = load i32, i32* %8, align 4
  %59 = load %struct.dlm_rcom*, %struct.dlm_rcom** %5, align 8
  %60 = getelementptr inbounds %struct.dlm_rcom, %struct.dlm_rcom* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  %61 = load %struct.dlm_rcom*, %struct.dlm_rcom** %4, align 8
  %62 = getelementptr inbounds %struct.dlm_rcom, %struct.dlm_rcom* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.dlm_rcom*, %struct.dlm_rcom** %5, align 8
  %65 = getelementptr inbounds %struct.dlm_rcom, %struct.dlm_rcom* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 4
  %66 = load %struct.dlm_rcom*, %struct.dlm_rcom** %4, align 8
  %67 = getelementptr inbounds %struct.dlm_rcom, %struct.dlm_rcom* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.dlm_rcom*, %struct.dlm_rcom** %5, align 8
  %70 = getelementptr inbounds %struct.dlm_rcom, %struct.dlm_rcom* %69, i32 0, i32 3
  store i32 %68, i32* %70, align 4
  %71 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %72 = load %struct.dlm_mhandle*, %struct.dlm_mhandle** %6, align 8
  %73 = load %struct.dlm_rcom*, %struct.dlm_rcom** %5, align 8
  %74 = call i32 @send_rcom(%struct.dlm_ls* %71, %struct.dlm_mhandle* %72, %struct.dlm_rcom* %73)
  br label %75

75:                                               ; preds = %57, %34, %28
  ret void
}

declare dso_local i32 @create_rcom(%struct.dlm_ls*, i32, i32, i32, %struct.dlm_rcom**, %struct.dlm_mhandle**) #1

declare dso_local i32 @log_error(%struct.dlm_ls*, i8*, i32) #1

declare dso_local i32 @dlm_dump_rsb_name(%struct.dlm_ls*, i32, i32) #1

declare dso_local i32 @dlm_master_lookup(%struct.dlm_ls*, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @send_rcom(%struct.dlm_ls*, %struct.dlm_mhandle*, %struct.dlm_rcom*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
