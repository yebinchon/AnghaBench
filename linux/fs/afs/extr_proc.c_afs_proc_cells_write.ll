; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_proc.c_afs_proc_cells_write.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_proc.c_afs_proc_cells_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.seq_file* }
%struct.seq_file = type { i32 }
%struct.afs_net = type { i32 }
%struct.afs_cell = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"cmd=%s name=%s args=%s\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"add\00", align 1
@AFS_CELL_FL_NO_GC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c" = %d\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [50 x i8] c"kAFS: Invalid Command on /proc/fs/afs/cells file\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, i64)* @afs_proc_cells_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @afs_proc_cells_write(%struct.file* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.seq_file*, align 8
  %8 = alloca %struct.afs_net*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.afs_cell*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %13 = load %struct.file*, %struct.file** %4, align 8
  %14 = getelementptr inbounds %struct.file, %struct.file* %13, i32 0, i32 0
  %15 = load %struct.seq_file*, %struct.seq_file** %14, align 8
  store %struct.seq_file* %15, %struct.seq_file** %7, align 8
  %16 = load %struct.seq_file*, %struct.seq_file** %7, align 8
  %17 = call %struct.afs_net* @afs_seq2net(%struct.seq_file* %16)
  store %struct.afs_net* %17, %struct.afs_net** %8, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = load i64, i64* %6, align 8
  %20 = call i8* @memchr(i8* %18, i8 signext 10, i64 %19)
  store i8* %20, i8** %9, align 8
  %21 = load i8*, i8** %9, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = load i8*, i8** %9, align 8
  store i8 0, i8* %24, align 1
  br label %25

25:                                               ; preds = %23, %3
  %26 = load i8*, i8** %5, align 8
  %27 = call i8* @strchr(i8* %26, i8 signext 32)
  store i8* %27, i8** %9, align 8
  %28 = load i8*, i8** %9, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %25
  br label %103

31:                                               ; preds = %25
  br label %32

32:                                               ; preds = %35, %31
  %33 = load i8*, i8** %9, align 8
  %34 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %34, i8** %9, align 8
  store i8 0, i8* %33, align 1
  br label %35

35:                                               ; preds = %32
  %36 = load i8*, i8** %9, align 8
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 32
  br i1 %39, label %32, label %40

40:                                               ; preds = %35
  %41 = load i8*, i8** %9, align 8
  %42 = load i8, i8* %41, align 1
  %43 = icmp ne i8 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %40
  br label %103

45:                                               ; preds = %40
  %46 = load i8*, i8** %9, align 8
  %47 = call i8* @strchr(i8* %46, i8 signext 32)
  store i8* %47, i8** %10, align 8
  %48 = load i8*, i8** %10, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %65

50:                                               ; preds = %45
  br label %51

51:                                               ; preds = %54, %50
  %52 = load i8*, i8** %10, align 8
  %53 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %53, i8** %10, align 8
  store i8 0, i8* %52, align 1
  br label %54

54:                                               ; preds = %51
  %55 = load i8*, i8** %10, align 8
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %57, 32
  br i1 %58, label %51, label %59

59:                                               ; preds = %54
  %60 = load i8*, i8** %10, align 8
  %61 = load i8, i8* %60, align 1
  %62 = icmp ne i8 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %59
  br label %103

64:                                               ; preds = %59
  br label %65

65:                                               ; preds = %64, %45
  %66 = load i8*, i8** %5, align 8
  %67 = load i8*, i8** %9, align 8
  %68 = load i8*, i8** %10, align 8
  %69 = call i32 @_debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %66, i8* %67, i8* %68)
  %70 = load i8*, i8** %5, align 8
  %71 = call i64 @strcmp(i8* %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %97

73:                                               ; preds = %65
  %74 = load %struct.afs_net*, %struct.afs_net** %8, align 8
  %75 = load i8*, i8** %9, align 8
  %76 = load i8*, i8** %9, align 8
  %77 = call i32 @strlen(i8* %76)
  %78 = load i8*, i8** %10, align 8
  %79 = call %struct.afs_cell* @afs_lookup_cell(%struct.afs_net* %74, i8* %75, i32 %77, i8* %78, i32 1)
  store %struct.afs_cell* %79, %struct.afs_cell** %12, align 8
  %80 = load %struct.afs_cell*, %struct.afs_cell** %12, align 8
  %81 = call i64 @IS_ERR(%struct.afs_cell* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %73
  %84 = load %struct.afs_cell*, %struct.afs_cell** %12, align 8
  %85 = call i32 @PTR_ERR(%struct.afs_cell* %84)
  store i32 %85, i32* %11, align 4
  br label %99

86:                                               ; preds = %73
  %87 = load i32, i32* @AFS_CELL_FL_NO_GC, align 4
  %88 = load %struct.afs_cell*, %struct.afs_cell** %12, align 8
  %89 = getelementptr inbounds %struct.afs_cell, %struct.afs_cell* %88, i32 0, i32 0
  %90 = call i64 @test_and_set_bit(i32 %87, i32* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %86
  %93 = load %struct.afs_net*, %struct.afs_net** %8, align 8
  %94 = load %struct.afs_cell*, %struct.afs_cell** %12, align 8
  %95 = call i32 @afs_put_cell(%struct.afs_net* %93, %struct.afs_cell* %94)
  br label %96

96:                                               ; preds = %92, %86
  br label %98

97:                                               ; preds = %65
  br label %103

98:                                               ; preds = %96
  store i32 0, i32* %11, align 4
  br label %99

99:                                               ; preds = %103, %98, %83
  %100 = load i32, i32* %11, align 4
  %101 = call i32 @_leave(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %100)
  %102 = load i32, i32* %11, align 4
  ret i32 %102

103:                                              ; preds = %97, %63, %44, %30
  %104 = load i32, i32* @EINVAL, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %11, align 4
  %106 = call i32 @printk(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0))
  br label %99
}

declare dso_local %struct.afs_net* @afs_seq2net(%struct.seq_file*) #1

declare dso_local i8* @memchr(i8*, i8 signext, i64) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @_debug(i8*, i8*, i8*, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local %struct.afs_cell* @afs_lookup_cell(%struct.afs_net*, i8*, i32, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @IS_ERR(%struct.afs_cell*) #1

declare dso_local i32 @PTR_ERR(%struct.afs_cell*) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @afs_put_cell(%struct.afs_net*, %struct.afs_cell*) #1

declare dso_local i32 @_leave(i8*, i32) #1

declare dso_local i32 @printk(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
