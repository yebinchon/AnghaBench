; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_smb2ops.c_smb21_downgrade_oplock.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_smb2ops.c_smb21_downgrade_oplock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TCP_Server_Info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.cifsInodeInfo*, i32, i32, i32*)* }
%struct.cifsInodeInfo = type { i32 }

@SMB2_LEASE_READ_CACHING_HE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TCP_Server_Info*, %struct.cifsInodeInfo*, i32)* @smb21_downgrade_oplock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smb21_downgrade_oplock(%struct.TCP_Server_Info* %0, %struct.cifsInodeInfo* %1, i32 %2) #0 {
  %4 = alloca %struct.TCP_Server_Info*, align 8
  %5 = alloca %struct.cifsInodeInfo*, align 8
  %6 = alloca i32, align 4
  store %struct.TCP_Server_Info* %0, %struct.TCP_Server_Info** %4, align 8
  store %struct.cifsInodeInfo* %1, %struct.cifsInodeInfo** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %4, align 8
  %8 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32 (%struct.cifsInodeInfo*, i32, i32, i32*)*, i32 (%struct.cifsInodeInfo*, i32, i32, i32*)** %10, align 8
  %12 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* @SMB2_LEASE_READ_CACHING_HE, align 4
  br label %18

17:                                               ; preds = %3
  br label %18

18:                                               ; preds = %17, %15
  %19 = phi i32 [ %16, %15 ], [ 0, %17 ]
  %20 = call i32 %11(%struct.cifsInodeInfo* %12, i32 %19, i32 0, i32* null)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
