; ModuleID = '/home/carl/AnghaBench/linux/fs/dlm/extr_member.c_dlm_slots_copy_out.c'
source_filename = "/home/carl/AnghaBench/linux/fs/dlm/extr_member.c_dlm_slots_copy_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ls = type { i32, %struct.dlm_slot* }
%struct.dlm_slot = type { i32, i32 }
%struct.dlm_rcom = type { i64 }
%struct.rcom_slot = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dlm_slots_copy_out(%struct.dlm_ls* %0, %struct.dlm_rcom* %1) #0 {
  %3 = alloca %struct.dlm_ls*, align 8
  %4 = alloca %struct.dlm_rcom*, align 8
  %5 = alloca %struct.dlm_slot*, align 8
  %6 = alloca %struct.rcom_slot*, align 8
  %7 = alloca i32, align 4
  store %struct.dlm_ls* %0, %struct.dlm_ls** %3, align 8
  store %struct.dlm_rcom* %1, %struct.dlm_rcom** %4, align 8
  %8 = load %struct.dlm_rcom*, %struct.dlm_rcom** %4, align 8
  %9 = getelementptr inbounds %struct.dlm_rcom, %struct.dlm_rcom* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = add i64 %10, 4
  %12 = inttoptr i64 %11 to %struct.rcom_slot*
  store %struct.rcom_slot* %12, %struct.rcom_slot** %6, align 8
  store i32 0, i32* %7, align 4
  br label %13

13:                                               ; preds = %46, %2
  %14 = load i32, i32* %7, align 4
  %15 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %16 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %49

19:                                               ; preds = %13
  %20 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %21 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %20, i32 0, i32 1
  %22 = load %struct.dlm_slot*, %struct.dlm_slot** %21, align 8
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.dlm_slot, %struct.dlm_slot* %22, i64 %24
  store %struct.dlm_slot* %25, %struct.dlm_slot** %5, align 8
  %26 = load %struct.dlm_slot*, %struct.dlm_slot** %5, align 8
  %27 = getelementptr inbounds %struct.dlm_slot, %struct.dlm_slot* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %19
  br label %46

31:                                               ; preds = %19
  %32 = load %struct.dlm_slot*, %struct.dlm_slot** %5, align 8
  %33 = getelementptr inbounds %struct.dlm_slot, %struct.dlm_slot* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @cpu_to_le32(i32 %34)
  %36 = load %struct.rcom_slot*, %struct.rcom_slot** %6, align 8
  %37 = getelementptr inbounds %struct.rcom_slot, %struct.rcom_slot* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load %struct.dlm_slot*, %struct.dlm_slot** %5, align 8
  %39 = getelementptr inbounds %struct.dlm_slot, %struct.dlm_slot* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @cpu_to_le16(i32 %40)
  %42 = load %struct.rcom_slot*, %struct.rcom_slot** %6, align 8
  %43 = getelementptr inbounds %struct.rcom_slot, %struct.rcom_slot* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  %44 = load %struct.rcom_slot*, %struct.rcom_slot** %6, align 8
  %45 = getelementptr inbounds %struct.rcom_slot, %struct.rcom_slot* %44, i32 1
  store %struct.rcom_slot* %45, %struct.rcom_slot** %6, align 8
  br label %46

46:                                               ; preds = %31, %30
  %47 = load i32, i32* %7, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %7, align 4
  br label %13

49:                                               ; preds = %13
  ret void
}

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
