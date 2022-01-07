; ModuleID = '/home/carl/AnghaBench/linux/fs/dlm/extr_member.c_dlm_lsop_recover_slot.c'
source_filename = "/home/carl/AnghaBench/linux/fs/dlm/extr_member.c_dlm_lsop_recover_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ls = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32, %struct.dlm_slot*)* }
%struct.dlm_slot = type { i32, i32 }
%struct.dlm_member = type { i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dlm_ls*, %struct.dlm_member*)* @dlm_lsop_recover_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dlm_lsop_recover_slot(%struct.dlm_ls* %0, %struct.dlm_member* %1) #0 {
  %3 = alloca %struct.dlm_ls*, align 8
  %4 = alloca %struct.dlm_member*, align 8
  %5 = alloca %struct.dlm_slot, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.dlm_ls* %0, %struct.dlm_ls** %3, align 8
  store %struct.dlm_member* %1, %struct.dlm_member** %4, align 8
  %8 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %9 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = icmp ne %struct.TYPE_2__* %10, null
  br i1 %11, label %12, label %19

12:                                               ; preds = %2
  %13 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %14 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32 (i32, %struct.dlm_slot*)*, i32 (i32, %struct.dlm_slot*)** %16, align 8
  %18 = icmp ne i32 (i32, %struct.dlm_slot*)* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %12, %2
  br label %52

20:                                               ; preds = %12
  %21 = load %struct.dlm_member*, %struct.dlm_member** %4, align 8
  %22 = getelementptr inbounds %struct.dlm_member, %struct.dlm_member* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @dlm_comm_seq(i32 %23, i64* %6)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %20
  %28 = load i64, i64* %6, align 8
  %29 = load %struct.dlm_member*, %struct.dlm_member** %4, align 8
  %30 = getelementptr inbounds %struct.dlm_member, %struct.dlm_member* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %28, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  br label %52

34:                                               ; preds = %27, %20
  %35 = load %struct.dlm_member*, %struct.dlm_member** %4, align 8
  %36 = getelementptr inbounds %struct.dlm_member, %struct.dlm_member* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds %struct.dlm_slot, %struct.dlm_slot* %5, i32 0, i32 1
  store i32 %37, i32* %38, align 4
  %39 = load %struct.dlm_member*, %struct.dlm_member** %4, align 8
  %40 = getelementptr inbounds %struct.dlm_member, %struct.dlm_member* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = getelementptr inbounds %struct.dlm_slot, %struct.dlm_slot* %5, i32 0, i32 0
  store i32 %41, i32* %42, align 4
  %43 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %44 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %43, i32 0, i32 1
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32 (i32, %struct.dlm_slot*)*, i32 (i32, %struct.dlm_slot*)** %46, align 8
  %48 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %49 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 %47(i32 %50, %struct.dlm_slot* %5)
  br label %52

52:                                               ; preds = %34, %33, %19
  ret void
}

declare dso_local i32 @dlm_comm_seq(i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
