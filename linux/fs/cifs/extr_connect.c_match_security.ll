; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_connect.c_match_security.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_connect.c_match_security.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TCP_Server_Info = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 (%struct.TCP_Server_Info*, i32)* }
%struct.smb_vol = type { i64, i32 }

@Unspecified = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TCP_Server_Info*, %struct.smb_vol*)* @match_security to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @match_security(%struct.TCP_Server_Info* %0, %struct.smb_vol* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TCP_Server_Info*, align 8
  %5 = alloca %struct.smb_vol*, align 8
  store %struct.TCP_Server_Info* %0, %struct.TCP_Server_Info** %4, align 8
  store %struct.smb_vol* %1, %struct.smb_vol** %5, align 8
  %6 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %4, align 8
  %7 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64 (%struct.TCP_Server_Info*, i32)*, i64 (%struct.TCP_Server_Info*, i32)** %9, align 8
  %11 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %4, align 8
  %12 = load %struct.smb_vol*, %struct.smb_vol** %5, align 8
  %13 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call i64 %10(%struct.TCP_Server_Info* %11, i32 %14)
  %16 = load i64, i64* @Unspecified, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %31

19:                                               ; preds = %2
  %20 = load %struct.smb_vol*, %struct.smb_vol** %5, align 8
  %21 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %19
  %25 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %4, align 8
  %26 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %31

30:                                               ; preds = %24, %19
  store i32 1, i32* %3, align 4
  br label %31

31:                                               ; preds = %30, %29, %18
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
