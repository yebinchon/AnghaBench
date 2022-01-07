; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvdimm/extr_label.c_nd_label_gen_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvdimm/extr_label.c_nd_label_gen_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nd_label_id = type { i8* }

@ND_LABEL_ID_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"%s-%pUb\00", align 1
@NSLABEL_FLAG_LOCAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"blk\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"pmem\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @nd_label_gen_id(%struct.nd_label_id* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.nd_label_id*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.nd_label_id* %0, %struct.nd_label_id** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.nd_label_id*, %struct.nd_label_id** %5, align 8
  %9 = icmp ne %struct.nd_label_id* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %3
  %11 = load i32*, i32** %6, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %10, %3
  store i8* null, i8** %4, align 8
  br label %30

14:                                               ; preds = %10
  %15 = load %struct.nd_label_id*, %struct.nd_label_id** %5, align 8
  %16 = getelementptr inbounds %struct.nd_label_id, %struct.nd_label_id* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = load i32, i32* @ND_LABEL_ID_SIZE, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @NSLABEL_FLAG_LOCAL, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %25 = load i32*, i32** %6, align 8
  %26 = call i32 @snprintf(i8* %17, i32 %18, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %24, i32* %25)
  %27 = load %struct.nd_label_id*, %struct.nd_label_id** %5, align 8
  %28 = getelementptr inbounds %struct.nd_label_id, %struct.nd_label_id* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  store i8* %29, i8** %4, align 8
  br label %30

30:                                               ; preds = %14, %13
  %31 = load i8*, i8** %4, align 8
  ret i8* %31
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
