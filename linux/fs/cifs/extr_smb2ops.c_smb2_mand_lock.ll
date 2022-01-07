; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_smb2ops.c_smb2_mand_lock.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_smb2ops.c_smb2_mand_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.cifsFileInfo = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@SMB2_LOCKFLAG_UNLOCK = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.cifsFileInfo*, i32, i32, i32, i32, i32, i32)* @smb2_mand_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smb2_mand_lock(i32 %0, %struct.cifsFileInfo* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.cifsFileInfo*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store %struct.cifsFileInfo* %1, %struct.cifsFileInfo** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %17 = load i32, i32* %15, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %8
  %20 = load i32, i32* %14, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %19
  %23 = load i32, i32* @SMB2_LOCKFLAG_UNLOCK, align 4
  store i32 %23, i32* %13, align 4
  br label %24

24:                                               ; preds = %22, %19, %8
  %25 = load i32, i32* %9, align 4
  %26 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %10, align 8
  %27 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @tlink_tcon(i32 %28)
  %30 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %10, align 8
  %31 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %10, align 8
  %35 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %12, align 4
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* %13, align 4
  %44 = load i32, i32* %16, align 4
  %45 = call i32 @SMB2_lock(i32 %25, i32 %29, i32 %33, i32 %37, i32 %40, i32 %41, i32 %42, i32 %43, i32 %44)
  ret i32 %45
}

declare dso_local i32 @SMB2_lock(i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @tlink_tcon(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
