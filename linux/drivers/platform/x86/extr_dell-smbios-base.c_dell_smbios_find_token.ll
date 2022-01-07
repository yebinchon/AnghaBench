; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_dell-smbios-base.c_dell_smbios_find_token.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_dell-smbios-base.c_dell_smbios_find_token.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.calling_interface_token = type { i32 }

@da_tokens = common dso_local global %struct.calling_interface_token* null, align 8
@da_num_tokens = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.calling_interface_token* @dell_smbios_find_token(i32 %0) #0 {
  %2 = alloca %struct.calling_interface_token*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load %struct.calling_interface_token*, %struct.calling_interface_token** @da_tokens, align 8
  %6 = icmp ne %struct.calling_interface_token* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  store %struct.calling_interface_token* null, %struct.calling_interface_token** %2, align 8
  br label %32

8:                                                ; preds = %1
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %28, %8
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @da_num_tokens, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %31

13:                                               ; preds = %9
  %14 = load %struct.calling_interface_token*, %struct.calling_interface_token** @da_tokens, align 8
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.calling_interface_token, %struct.calling_interface_token* %14, i64 %16
  %18 = getelementptr inbounds %struct.calling_interface_token, %struct.calling_interface_token* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %3, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %13
  %23 = load %struct.calling_interface_token*, %struct.calling_interface_token** @da_tokens, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.calling_interface_token, %struct.calling_interface_token* %23, i64 %25
  store %struct.calling_interface_token* %26, %struct.calling_interface_token** %2, align 8
  br label %32

27:                                               ; preds = %13
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* %4, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %4, align 4
  br label %9

31:                                               ; preds = %9
  store %struct.calling_interface_token* null, %struct.calling_interface_token** %2, align 8
  br label %32

32:                                               ; preds = %31, %22, %7
  %33 = load %struct.calling_interface_token*, %struct.calling_interface_token** %2, align 8
  ret %struct.calling_interface_token* %33
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
