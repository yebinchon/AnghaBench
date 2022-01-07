; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_dir.c_afs_dir_check_pages.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_dir.c_afs_dir_check_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_vnode = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.afs_read = type { i32, i32*, i32, i32, i32, i32, i32, i32, i32 }
%struct.afs_xdr_dir_page = type { %union.afs_xdr_dir_block* }
%union.afs_xdr_dir_block = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"DIR %llx:%llx f=%llx l=%llx al=%llx r=%llx\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"DIR %llx %x %x %x\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"[%02x] %32phN\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.afs_vnode*, %struct.afs_read*)* @afs_dir_check_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @afs_dir_check_pages(%struct.afs_vnode* %0, %struct.afs_read* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.afs_vnode*, align 8
  %5 = alloca %struct.afs_read*, align 8
  %6 = alloca %struct.afs_xdr_dir_page*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %union.afs_xdr_dir_block*, align 8
  store %struct.afs_vnode* %0, %struct.afs_vnode** %4, align 8
  store %struct.afs_read* %1, %struct.afs_read** %5, align 8
  %11 = load i32, i32* @PAGE_SIZE, align 4
  %12 = sext i32 %11 to i64
  %13 = udiv i64 %12, 4
  %14 = trunc i64 %13 to i32
  store i32 %14, i32* %9, align 4
  store i32 0, i32* %7, align 4
  br label %15

15:                                               ; preds = %37, %2
  %16 = load i32, i32* %7, align 4
  %17 = load %struct.afs_read*, %struct.afs_read** %5, align 8
  %18 = getelementptr inbounds %struct.afs_read, %struct.afs_read* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ult i32 %16, %19
  br i1 %20, label %21, label %40

21:                                               ; preds = %15
  %22 = load %struct.afs_vnode*, %struct.afs_vnode** %4, align 8
  %23 = load %struct.afs_read*, %struct.afs_read** %5, align 8
  %24 = getelementptr inbounds %struct.afs_read, %struct.afs_read* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %7, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.afs_read*, %struct.afs_read** %5, align 8
  %31 = getelementptr inbounds %struct.afs_read, %struct.afs_read* %30, i32 0, i32 6
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @afs_dir_check_page(%struct.afs_vnode* %22, i32 %29, i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %21
  br label %41

36:                                               ; preds = %21
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %7, align 4
  %39 = add i32 %38, 1
  store i32 %39, i32* %7, align 4
  br label %15

40:                                               ; preds = %15
  store i32 1, i32* %3, align 4
  br label %129

41:                                               ; preds = %35
  %42 = load %struct.afs_vnode*, %struct.afs_vnode** %4, align 8
  %43 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.afs_vnode*, %struct.afs_vnode** %4, align 8
  %47 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = sext i32 %49 to i64
  %51 = inttoptr i64 %50 to %union.afs_xdr_dir_block*
  %52 = load %struct.afs_read*, %struct.afs_read** %5, align 8
  %53 = getelementptr inbounds %struct.afs_read, %struct.afs_read* %52, i32 0, i32 8
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.afs_read*, %struct.afs_read** %5, align 8
  %56 = getelementptr inbounds %struct.afs_read, %struct.afs_read* %55, i32 0, i32 7
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.afs_read*, %struct.afs_read** %5, align 8
  %59 = getelementptr inbounds %struct.afs_read, %struct.afs_read* %58, i32 0, i32 6
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.afs_read*, %struct.afs_read** %5, align 8
  %62 = getelementptr inbounds %struct.afs_read, %struct.afs_read* %61, i32 0, i32 5
  %63 = load i32, i32* %62, align 4
  %64 = call i32 (i8*, i32, %union.afs_xdr_dir_block*, ...) @pr_warn(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %45, %union.afs_xdr_dir_block* %51, i32 %54, i32 %57, i32 %60, i32 %63)
  %65 = load %struct.afs_read*, %struct.afs_read** %5, align 8
  %66 = getelementptr inbounds %struct.afs_read, %struct.afs_read* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.afs_read*, %struct.afs_read** %5, align 8
  %69 = getelementptr inbounds %struct.afs_read, %struct.afs_read* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = sext i32 %70 to i64
  %72 = inttoptr i64 %71 to %union.afs_xdr_dir_block*
  %73 = load %struct.afs_read*, %struct.afs_read** %5, align 8
  %74 = getelementptr inbounds %struct.afs_read, %struct.afs_read* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.afs_read*, %struct.afs_read** %5, align 8
  %77 = getelementptr inbounds %struct.afs_read, %struct.afs_read* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = call i32 (i8*, i32, %union.afs_xdr_dir_block*, ...) @pr_warn(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %67, %union.afs_xdr_dir_block* %72, i32 %75, i32 %78)
  store i32 0, i32* %7, align 4
  br label %80

80:                                               ; preds = %125, %41
  %81 = load i32, i32* %7, align 4
  %82 = load %struct.afs_read*, %struct.afs_read** %5, align 8
  %83 = getelementptr inbounds %struct.afs_read, %struct.afs_read* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = icmp ult i32 %81, %84
  br i1 %85, label %86, label %128

86:                                               ; preds = %80
  %87 = load %struct.afs_read*, %struct.afs_read** %5, align 8
  %88 = getelementptr inbounds %struct.afs_read, %struct.afs_read* %87, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %7, align 4
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = call %struct.afs_xdr_dir_page* @kmap(i32 %93)
  store %struct.afs_xdr_dir_page* %94, %struct.afs_xdr_dir_page** %6, align 8
  store i32 0, i32* %8, align 4
  br label %95

95:                                               ; preds = %113, %86
  %96 = load i32, i32* %8, align 4
  %97 = load i32, i32* %9, align 4
  %98 = icmp ult i32 %96, %97
  br i1 %98, label %99, label %116

99:                                               ; preds = %95
  %100 = load %struct.afs_xdr_dir_page*, %struct.afs_xdr_dir_page** %6, align 8
  %101 = getelementptr inbounds %struct.afs_xdr_dir_page, %struct.afs_xdr_dir_page* %100, i32 0, i32 0
  %102 = load %union.afs_xdr_dir_block*, %union.afs_xdr_dir_block** %101, align 8
  %103 = load i32, i32* %8, align 4
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds %union.afs_xdr_dir_block, %union.afs_xdr_dir_block* %102, i64 %104
  store %union.afs_xdr_dir_block* %105, %union.afs_xdr_dir_block** %10, align 8
  %106 = load i32, i32* %7, align 4
  %107 = load i32, i32* %9, align 4
  %108 = mul i32 %106, %107
  %109 = load i32, i32* %8, align 4
  %110 = add i32 %108, %109
  %111 = load %union.afs_xdr_dir_block*, %union.afs_xdr_dir_block** %10, align 8
  %112 = call i32 (i8*, i32, %union.afs_xdr_dir_block*, ...) @pr_warn(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %110, %union.afs_xdr_dir_block* %111)
  br label %113

113:                                              ; preds = %99
  %114 = load i32, i32* %8, align 4
  %115 = add i32 %114, 1
  store i32 %115, i32* %8, align 4
  br label %95

116:                                              ; preds = %95
  %117 = load %struct.afs_read*, %struct.afs_read** %5, align 8
  %118 = getelementptr inbounds %struct.afs_read, %struct.afs_read* %117, i32 0, i32 1
  %119 = load i32*, i32** %118, align 8
  %120 = load i32, i32* %7, align 4
  %121 = zext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @kunmap(i32 %123)
  br label %125

125:                                              ; preds = %116
  %126 = load i32, i32* %7, align 4
  %127 = add i32 %126, 1
  store i32 %127, i32* %7, align 4
  br label %80

128:                                              ; preds = %80
  store i32 0, i32* %3, align 4
  br label %129

129:                                              ; preds = %128, %40
  %130 = load i32, i32* %3, align 4
  ret i32 %130
}

declare dso_local i32 @afs_dir_check_page(%struct.afs_vnode*, i32, i32) #1

declare dso_local i32 @pr_warn(i8*, i32, %union.afs_xdr_dir_block*, ...) #1

declare dso_local %struct.afs_xdr_dir_page* @kmap(i32) #1

declare dso_local i32 @kunmap(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
