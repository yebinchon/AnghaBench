; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_smb2pdu.c_smb2_select_sectype.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_smb2pdu.c_smb2_select_sectype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TCP_Server_Info = type { i32, i32, i32 }

@global_secflags = common dso_local global i32 0, align 4
@CIFSSEC_MAY_NTLMSSP = common dso_local global i32 0, align 4
@CIFSSEC_MAY_KRB5 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smb2_select_sectype(%struct.TCP_Server_Info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TCP_Server_Info*, align 8
  %5 = alloca i32, align 4
  store %struct.TCP_Server_Info* %0, %struct.TCP_Server_Info** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %38 [
    i32 131, label %7
    i32 129, label %7
    i32 130, label %9
    i32 128, label %10
  ]

7:                                                ; preds = %2, %2
  %8 = load i32, i32* %5, align 4
  store i32 %8, i32* %3, align 4
  br label %39

9:                                                ; preds = %2
  store i32 129, i32* %3, align 4
  br label %39

10:                                               ; preds = %2
  %11 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %4, align 8
  %12 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %10
  %16 = load i32, i32* @global_secflags, align 4
  %17 = load i32, i32* @CIFSSEC_MAY_NTLMSSP, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  store i32 129, i32* %3, align 4
  br label %39

21:                                               ; preds = %15, %10
  %22 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %4, align 8
  %23 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %21
  %27 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %4, align 8
  %28 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %26, %21
  %32 = load i32, i32* @global_secflags, align 4
  %33 = load i32, i32* @CIFSSEC_MAY_KRB5, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  store i32 131, i32* %3, align 4
  br label %39

37:                                               ; preds = %31, %26
  br label %38

38:                                               ; preds = %2, %37
  store i32 128, i32* %3, align 4
  br label %39

39:                                               ; preds = %38, %36, %20, %9, %7
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
