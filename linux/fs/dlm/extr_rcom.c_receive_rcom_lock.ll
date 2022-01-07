; ModuleID = '/home/carl/AnghaBench/linux/fs/dlm/extr_rcom.c_receive_rcom_lock.c'
source_filename = "/home/carl/AnghaBench/linux/fs/dlm/extr_rcom.c_receive_rcom_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ls = type { i32 }
%struct.dlm_rcom = type { i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.dlm_mhandle = type { i32 }

@DLM_RCOM_LOCK_REPLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dlm_ls*, %struct.dlm_rcom*)* @receive_rcom_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @receive_rcom_lock(%struct.dlm_ls* %0, %struct.dlm_rcom* %1) #0 {
  %3 = alloca %struct.dlm_ls*, align 8
  %4 = alloca %struct.dlm_rcom*, align 8
  %5 = alloca %struct.dlm_rcom*, align 8
  %6 = alloca %struct.dlm_mhandle*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dlm_ls* %0, %struct.dlm_ls** %3, align 8
  store %struct.dlm_rcom* %1, %struct.dlm_rcom** %4, align 8
  %9 = load %struct.dlm_rcom*, %struct.dlm_rcom** %4, align 8
  %10 = getelementptr inbounds %struct.dlm_rcom, %struct.dlm_rcom* %9, i32 0, i32 4
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %8, align 4
  %13 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %14 = load %struct.dlm_rcom*, %struct.dlm_rcom** %4, align 8
  %15 = call i32 @dlm_recover_master_copy(%struct.dlm_ls* %13, %struct.dlm_rcom* %14)
  %16 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @DLM_RCOM_LOCK_REPLY, align 4
  %19 = call i32 @create_rcom(%struct.dlm_ls* %16, i32 %17, i32 %18, i32 4, %struct.dlm_rcom** %5, %struct.dlm_mhandle** %6)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  br label %45

23:                                               ; preds = %2
  %24 = load %struct.dlm_rcom*, %struct.dlm_rcom** %5, align 8
  %25 = getelementptr inbounds %struct.dlm_rcom, %struct.dlm_rcom* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.dlm_rcom*, %struct.dlm_rcom** %4, align 8
  %28 = getelementptr inbounds %struct.dlm_rcom, %struct.dlm_rcom* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @memcpy(i32 %26, i32 %29, i32 4)
  %31 = load %struct.dlm_rcom*, %struct.dlm_rcom** %4, align 8
  %32 = getelementptr inbounds %struct.dlm_rcom, %struct.dlm_rcom* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.dlm_rcom*, %struct.dlm_rcom** %5, align 8
  %35 = getelementptr inbounds %struct.dlm_rcom, %struct.dlm_rcom* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 4
  %36 = load %struct.dlm_rcom*, %struct.dlm_rcom** %4, align 8
  %37 = getelementptr inbounds %struct.dlm_rcom, %struct.dlm_rcom* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.dlm_rcom*, %struct.dlm_rcom** %5, align 8
  %40 = getelementptr inbounds %struct.dlm_rcom, %struct.dlm_rcom* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %42 = load %struct.dlm_mhandle*, %struct.dlm_mhandle** %6, align 8
  %43 = load %struct.dlm_rcom*, %struct.dlm_rcom** %5, align 8
  %44 = call i32 @send_rcom(%struct.dlm_ls* %41, %struct.dlm_mhandle* %42, %struct.dlm_rcom* %43)
  br label %45

45:                                               ; preds = %23, %22
  ret void
}

declare dso_local i32 @dlm_recover_master_copy(%struct.dlm_ls*, %struct.dlm_rcom*) #1

declare dso_local i32 @create_rcom(%struct.dlm_ls*, i32, i32, i32, %struct.dlm_rcom**, %struct.dlm_mhandle**) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @send_rcom(%struct.dlm_ls*, %struct.dlm_mhandle*, %struct.dlm_rcom*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
