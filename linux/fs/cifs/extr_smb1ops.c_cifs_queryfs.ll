; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_smb1ops.c_cifs_queryfs.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_smb1ops.c_cifs_queryfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifs_tcon = type { %struct.TYPE_3__*, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.kstatfs = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@CIFS_MAGIC_NUMBER = common dso_local global i32 0, align 4
@CAP_UNIX = common dso_local global i32 0, align 4
@CIFS_POSIX_EXTENSIONS = common dso_local global i32 0, align 4
@CAP_NT_SMBS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.cifs_tcon*, %struct.kstatfs*)* @cifs_queryfs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cifs_queryfs(i32 %0, %struct.cifs_tcon* %1, %struct.kstatfs* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cifs_tcon*, align 8
  %6 = alloca %struct.kstatfs*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.cifs_tcon* %1, %struct.cifs_tcon** %5, align 8
  store %struct.kstatfs* %2, %struct.kstatfs** %6, align 8
  %8 = load i32, i32* @EOPNOTSUPP, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* @CIFS_MAGIC_NUMBER, align 4
  %11 = load %struct.kstatfs*, %struct.kstatfs** %6, align 8
  %12 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 4
  %13 = load %struct.cifs_tcon*, %struct.cifs_tcon** %5, align 8
  %14 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @CAP_UNIX, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %35

21:                                               ; preds = %3
  %22 = load i32, i32* @CIFS_POSIX_EXTENSIONS, align 4
  %23 = load %struct.cifs_tcon*, %struct.cifs_tcon** %5, align 8
  %24 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @le64_to_cpu(i32 %26)
  %28 = and i32 %22, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %21
  %31 = load i32, i32* %4, align 4
  %32 = load %struct.cifs_tcon*, %struct.cifs_tcon** %5, align 8
  %33 = load %struct.kstatfs*, %struct.kstatfs** %6, align 8
  %34 = call i32 @CIFSSMBQFSPosixInfo(i32 %31, %struct.cifs_tcon* %32, %struct.kstatfs* %33)
  store i32 %34, i32* %7, align 4
  br label %35

35:                                               ; preds = %30, %21, %3
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %52

38:                                               ; preds = %35
  %39 = load %struct.cifs_tcon*, %struct.cifs_tcon** %5, align 8
  %40 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %39, i32 0, i32 0
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @CAP_NT_SMBS, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %38
  %48 = load i32, i32* %4, align 4
  %49 = load %struct.cifs_tcon*, %struct.cifs_tcon** %5, align 8
  %50 = load %struct.kstatfs*, %struct.kstatfs** %6, align 8
  %51 = call i32 @CIFSSMBQFSInfo(i32 %48, %struct.cifs_tcon* %49, %struct.kstatfs* %50)
  store i32 %51, i32* %7, align 4
  br label %52

52:                                               ; preds = %47, %38, %35
  %53 = load i32, i32* %7, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %52
  %56 = load i32, i32* %4, align 4
  %57 = load %struct.cifs_tcon*, %struct.cifs_tcon** %5, align 8
  %58 = load %struct.kstatfs*, %struct.kstatfs** %6, align 8
  %59 = call i32 @SMBOldQFSInfo(i32 %56, %struct.cifs_tcon* %57, %struct.kstatfs* %58)
  store i32 %59, i32* %7, align 4
  br label %60

60:                                               ; preds = %55, %52
  %61 = load i32, i32* %7, align 4
  ret i32 %61
}

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @CIFSSMBQFSPosixInfo(i32, %struct.cifs_tcon*, %struct.kstatfs*) #1

declare dso_local i32 @CIFSSMBQFSInfo(i32, %struct.cifs_tcon*, %struct.kstatfs*) #1

declare dso_local i32 @SMBOldQFSInfo(i32, %struct.cifs_tcon*, %struct.kstatfs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
