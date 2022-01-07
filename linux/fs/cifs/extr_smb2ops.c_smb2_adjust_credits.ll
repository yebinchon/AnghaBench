; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_smb2ops.c_smb2_adjust_credits.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_smb2ops.c_smb2_adjust_credits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TCP_Server_Info = type { i64, i32, i32, i32 }
%struct.cifs_credits = type { i32, i64 }

@SMB2_MAX_BUFFER_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"request has less credits (%d) than required (%d)\00", align 1
@ENOTSUPP = common dso_local global i32 0, align 4
@VFS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"trying to return %d credits to old session\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TCP_Server_Info*, %struct.cifs_credits*, i32)* @smb2_adjust_credits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smb2_adjust_credits(%struct.TCP_Server_Info* %0, %struct.cifs_credits* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TCP_Server_Info*, align 8
  %6 = alloca %struct.cifs_credits*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TCP_Server_Info* %0, %struct.TCP_Server_Info** %5, align 8
  store %struct.cifs_credits* %1, %struct.cifs_credits** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* @SMB2_MAX_BUFFER_SIZE, align 4
  %11 = call i32 @DIV_ROUND_UP(i32 %9, i32 %10)
  store i32 %11, i32* %8, align 4
  %12 = load %struct.cifs_credits*, %struct.cifs_credits** %6, align 8
  %13 = getelementptr inbounds %struct.cifs_credits, %struct.cifs_credits* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %3
  %17 = load %struct.cifs_credits*, %struct.cifs_credits** %6, align 8
  %18 = getelementptr inbounds %struct.cifs_credits, %struct.cifs_credits* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* %8, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %16, %3
  store i32 0, i32* %4, align 4
  br label %80

23:                                               ; preds = %16
  %24 = load %struct.cifs_credits*, %struct.cifs_credits** %6, align 8
  %25 = getelementptr inbounds %struct.cifs_credits, %struct.cifs_credits* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* %8, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %37

29:                                               ; preds = %23
  %30 = load %struct.cifs_credits*, %struct.cifs_credits** %6, align 8
  %31 = getelementptr inbounds %struct.cifs_credits, %struct.cifs_credits* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @WARN_ONCE(i32 1, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %33)
  %35 = load i32, i32* @ENOTSUPP, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %80

37:                                               ; preds = %23
  %38 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %5, align 8
  %39 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %38, i32 0, i32 2
  %40 = call i32 @spin_lock(i32* %39)
  %41 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %5, align 8
  %42 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.cifs_credits*, %struct.cifs_credits** %6, align 8
  %45 = getelementptr inbounds %struct.cifs_credits, %struct.cifs_credits* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %43, %46
  br i1 %47, label %48, label %61

48:                                               ; preds = %37
  %49 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %5, align 8
  %50 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %49, i32 0, i32 2
  %51 = call i32 @spin_unlock(i32* %50)
  %52 = load i32, i32* @VFS, align 4
  %53 = load %struct.cifs_credits*, %struct.cifs_credits** %6, align 8
  %54 = getelementptr inbounds %struct.cifs_credits, %struct.cifs_credits* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* %8, align 4
  %57 = sub nsw i32 %55, %56
  %58 = call i32 @cifs_server_dbg(i32 %52, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %57)
  %59 = load i32, i32* @EAGAIN, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %4, align 4
  br label %80

61:                                               ; preds = %37
  %62 = load %struct.cifs_credits*, %struct.cifs_credits** %6, align 8
  %63 = getelementptr inbounds %struct.cifs_credits, %struct.cifs_credits* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* %8, align 4
  %66 = sub nsw i32 %64, %65
  %67 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %5, align 8
  %68 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 8
  %70 = add nsw i32 %69, %66
  store i32 %70, i32* %68, align 8
  %71 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %5, align 8
  %72 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %71, i32 0, i32 2
  %73 = call i32 @spin_unlock(i32* %72)
  %74 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %5, align 8
  %75 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %74, i32 0, i32 1
  %76 = call i32 @wake_up(i32* %75)
  %77 = load i32, i32* %8, align 4
  %78 = load %struct.cifs_credits*, %struct.cifs_credits** %6, align 8
  %79 = getelementptr inbounds %struct.cifs_credits, %struct.cifs_credits* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 8
  store i32 0, i32* %4, align 4
  br label %80

80:                                               ; preds = %61, %48, %29, %22
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @WARN_ONCE(i32, i8*, i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @cifs_server_dbg(i32, i8*, i32) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
