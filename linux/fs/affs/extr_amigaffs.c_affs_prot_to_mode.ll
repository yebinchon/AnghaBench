; ModuleID = '/home/carl/AnghaBench/linux/fs/affs/extr_amigaffs.c_affs_prot_to_mode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/affs/extr_amigaffs.c_affs_prot_to_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FIBF_NOWRITE = common dso_local global i32 0, align 4
@FIBF_NOREAD = common dso_local global i32 0, align 4
@FIBF_NOEXECUTE = common dso_local global i32 0, align 4
@FIBF_GRP_WRITE = common dso_local global i32 0, align 4
@FIBF_GRP_READ = common dso_local global i32 0, align 4
@FIBF_GRP_EXECUTE = common dso_local global i32 0, align 4
@FIBF_OTR_WRITE = common dso_local global i32 0, align 4
@FIBF_OTR_READ = common dso_local global i32 0, align 4
@FIBF_OTR_EXECUTE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @affs_prot_to_mode(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @FIBF_NOWRITE, align 4
  %6 = and i32 %4, %5
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  %10 = or i32 %9, 128
  store i32 %10, i32* %3, align 4
  br label %11

11:                                               ; preds = %8, %1
  %12 = load i32, i32* %2, align 4
  %13 = load i32, i32* @FIBF_NOREAD, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %11
  %17 = load i32, i32* %3, align 4
  %18 = or i32 %17, 256
  store i32 %18, i32* %3, align 4
  br label %19

19:                                               ; preds = %16, %11
  %20 = load i32, i32* %2, align 4
  %21 = load i32, i32* @FIBF_NOEXECUTE, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %19
  %25 = load i32, i32* %3, align 4
  %26 = or i32 %25, 64
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %24, %19
  %28 = load i32, i32* %2, align 4
  %29 = load i32, i32* @FIBF_GRP_WRITE, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i32, i32* %3, align 4
  %34 = or i32 %33, 16
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %32, %27
  %36 = load i32, i32* %2, align 4
  %37 = load i32, i32* @FIBF_GRP_READ, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load i32, i32* %3, align 4
  %42 = or i32 %41, 32
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %40, %35
  %44 = load i32, i32* %2, align 4
  %45 = load i32, i32* @FIBF_GRP_EXECUTE, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = load i32, i32* %3, align 4
  %50 = or i32 %49, 8
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %48, %43
  %52 = load i32, i32* %2, align 4
  %53 = load i32, i32* @FIBF_OTR_WRITE, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  %57 = load i32, i32* %3, align 4
  %58 = or i32 %57, 2
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %56, %51
  %60 = load i32, i32* %2, align 4
  %61 = load i32, i32* @FIBF_OTR_READ, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %59
  %65 = load i32, i32* %3, align 4
  %66 = or i32 %65, 4
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %64, %59
  %68 = load i32, i32* %2, align 4
  %69 = load i32, i32* @FIBF_OTR_EXECUTE, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %67
  %73 = load i32, i32* %3, align 4
  %74 = or i32 %73, 1
  store i32 %74, i32* %3, align 4
  br label %75

75:                                               ; preds = %72, %67
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
