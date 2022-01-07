; ModuleID = '/home/carl/AnghaBench/linux/fs/coda/extr_dir.c_coda_revalidate_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/coda/extr_dir.c_coda_revalidate_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i64, i32 }
%struct.coda_vattr = type { i32 }
%struct.coda_inode_info = type { i32, i32, i32 }

@C_VATTR = common dso_local global i32 0, align 4
@C_PURGE = common dso_local global i32 0, align 4
@C_FLUSH = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@S_IFMT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"inode %ld, fid %s changed type!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @coda_revalidate_inode(%struct.inode* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.coda_vattr, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.coda_inode_info*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  %9 = load %struct.inode*, %struct.inode** %3, align 8
  %10 = call %struct.coda_inode_info* @ITOC(%struct.inode* %9)
  store %struct.coda_inode_info* %10, %struct.coda_inode_info** %8, align 8
  %11 = load %struct.coda_inode_info*, %struct.coda_inode_info** %8, align 8
  %12 = getelementptr inbounds %struct.coda_inode_info, %struct.coda_inode_info* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %95

16:                                               ; preds = %1
  %17 = load %struct.coda_inode_info*, %struct.coda_inode_info** %8, align 8
  %18 = getelementptr inbounds %struct.coda_inode_info, %struct.coda_inode_info* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @C_VATTR, align 4
  %21 = load i32, i32* @C_PURGE, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @C_FLUSH, align 4
  %24 = or i32 %22, %23
  %25 = and i32 %19, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %94

27:                                               ; preds = %16
  %28 = load %struct.inode*, %struct.inode** %3, align 8
  %29 = getelementptr inbounds %struct.inode, %struct.inode* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.coda_inode_info*, %struct.coda_inode_info** %8, align 8
  %32 = getelementptr inbounds %struct.coda_inode_info, %struct.coda_inode_info* %31, i32 0, i32 2
  %33 = call i32 @venus_getattr(i32 %30, i32* %32, %struct.coda_vattr* %4)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %27
  %37 = load i32, i32* @EIO, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %95

39:                                               ; preds = %27
  %40 = load %struct.inode*, %struct.inode** %3, align 8
  %41 = getelementptr inbounds %struct.inode, %struct.inode* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  store i32 %42, i32* %6, align 4
  %43 = load %struct.inode*, %struct.inode** %3, align 8
  %44 = getelementptr inbounds %struct.inode, %struct.inode* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* %7, align 8
  %46 = load %struct.inode*, %struct.inode** %3, align 8
  %47 = call i32 @coda_vattr_to_iattr(%struct.inode* %46, %struct.coda_vattr* %4)
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @S_IFMT, align 4
  %50 = and i32 %48, %49
  %51 = load %struct.inode*, %struct.inode** %3, align 8
  %52 = getelementptr inbounds %struct.inode, %struct.inode* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @S_IFMT, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %50, %55
  br i1 %56, label %57, label %65

57:                                               ; preds = %39
  %58 = load %struct.inode*, %struct.inode** %3, align 8
  %59 = getelementptr inbounds %struct.inode, %struct.inode* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.coda_inode_info*, %struct.coda_inode_info** %8, align 8
  %62 = getelementptr inbounds %struct.coda_inode_info, %struct.coda_inode_info* %61, i32 0, i32 2
  %63 = call i32 @coda_f2s(i32* %62)
  %64 = call i32 @pr_warn(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %60, i32 %63)
  br label %65

65:                                               ; preds = %57, %39
  %66 = load %struct.inode*, %struct.inode** %3, align 8
  %67 = getelementptr inbounds %struct.inode, %struct.inode* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* %7, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %65
  %72 = load i32, i32* @EIO, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %2, align 4
  br label %95

74:                                               ; preds = %65
  %75 = load %struct.inode*, %struct.inode** %3, align 8
  %76 = load i32, i32* @C_FLUSH, align 4
  %77 = call i32 @coda_flag_inode_children(%struct.inode* %75, i32 %76)
  %78 = load %struct.coda_inode_info*, %struct.coda_inode_info** %8, align 8
  %79 = getelementptr inbounds %struct.coda_inode_info, %struct.coda_inode_info* %78, i32 0, i32 1
  %80 = call i32 @spin_lock(i32* %79)
  %81 = load i32, i32* @C_VATTR, align 4
  %82 = load i32, i32* @C_PURGE, align 4
  %83 = or i32 %81, %82
  %84 = load i32, i32* @C_FLUSH, align 4
  %85 = or i32 %83, %84
  %86 = xor i32 %85, -1
  %87 = load %struct.coda_inode_info*, %struct.coda_inode_info** %8, align 8
  %88 = getelementptr inbounds %struct.coda_inode_info, %struct.coda_inode_info* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = and i32 %89, %86
  store i32 %90, i32* %88, align 4
  %91 = load %struct.coda_inode_info*, %struct.coda_inode_info** %8, align 8
  %92 = getelementptr inbounds %struct.coda_inode_info, %struct.coda_inode_info* %91, i32 0, i32 1
  %93 = call i32 @spin_unlock(i32* %92)
  br label %94

94:                                               ; preds = %74, %16
  store i32 0, i32* %2, align 4
  br label %95

95:                                               ; preds = %94, %71, %36, %15
  %96 = load i32, i32* %2, align 4
  ret i32 %96
}

declare dso_local %struct.coda_inode_info* @ITOC(%struct.inode*) #1

declare dso_local i32 @venus_getattr(i32, i32*, %struct.coda_vattr*) #1

declare dso_local i32 @coda_vattr_to_iattr(%struct.inode*, %struct.coda_vattr*) #1

declare dso_local i32 @pr_warn(i8*, i64, i32) #1

declare dso_local i32 @coda_f2s(i32*) #1

declare dso_local i32 @coda_flag_inode_children(%struct.inode*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
