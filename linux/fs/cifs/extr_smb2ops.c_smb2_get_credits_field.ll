; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_smb2ops.c_smb2_get_credits_field.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_smb2ops.c_smb2_get_credits_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TCP_Server_Info = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TCP_Server_Info*, i32)* @smb2_get_credits_field to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @smb2_get_credits_field(%struct.TCP_Server_Info* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TCP_Server_Info*, align 8
  %5 = alloca i32, align 4
  store %struct.TCP_Server_Info* %0, %struct.TCP_Server_Info** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %13 [
    i32 129, label %7
    i32 128, label %10
  ]

7:                                                ; preds = %2
  %8 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %4, align 8
  %9 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %8, i32 0, i32 0
  store i32* %9, i32** %3, align 8
  br label %16

10:                                               ; preds = %2
  %11 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %4, align 8
  %12 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %11, i32 0, i32 1
  store i32* %12, i32** %3, align 8
  br label %16

13:                                               ; preds = %2
  %14 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %4, align 8
  %15 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %14, i32 0, i32 2
  store i32* %15, i32** %3, align 8
  br label %16

16:                                               ; preds = %13, %10, %7
  %17 = load i32*, i32** %3, align 8
  ret i32* %17
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
