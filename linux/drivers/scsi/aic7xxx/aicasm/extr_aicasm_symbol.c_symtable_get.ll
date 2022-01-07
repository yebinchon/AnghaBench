; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/aicasm/extr_aicasm_symbol.c_symtable_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/aicasm/extr_aicasm_symbol.c_symtable_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32 (%struct.TYPE_19__*, %struct.TYPE_18__*, %struct.TYPE_18__*, i32)*, i64 (%struct.TYPE_19__*, %struct.TYPE_18__*, %struct.TYPE_18__*, i32)* }
%struct.TYPE_18__ = type { i32, %struct.TYPE_17__** }
%struct.TYPE_17__ = type { i32 }

@symtable = common dso_local global %struct.TYPE_19__* null, align 8
@.str = private unnamed_addr constant [34 x i8] c"Symbol table get operation failed\00", align 1
@EX_SOFTWARE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Symtable put failed\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"Unexpected return value from db get routine\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_17__* @symtable_get(i8* %0) #0 {
  %2 = alloca %struct.TYPE_17__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_18__, align 8
  %6 = alloca %struct.TYPE_18__, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_17__*, align 8
  store i8* %0, i8** %3, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = bitcast i8* %9 to %struct.TYPE_17__**
  %11 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %5, i32 0, i32 1
  store %struct.TYPE_17__** %10, %struct.TYPE_17__*** %11, align 8
  %12 = load i8*, i8** %3, align 8
  %13 = call i32 @strlen(i8* %12)
  %14 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %5, i32 0, i32 0
  store i32 %13, i32* %14, align 8
  %15 = load %struct.TYPE_19__*, %struct.TYPE_19__** @symtable, align 8
  %16 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %15, i32 0, i32 0
  %17 = load i32 (%struct.TYPE_19__*, %struct.TYPE_18__*, %struct.TYPE_18__*, i32)*, i32 (%struct.TYPE_19__*, %struct.TYPE_18__*, %struct.TYPE_18__*, i32)** %16, align 8
  %18 = load %struct.TYPE_19__*, %struct.TYPE_19__** @symtable, align 8
  %19 = call i32 %17(%struct.TYPE_19__* %18, %struct.TYPE_18__* %5, %struct.TYPE_18__* %6, i32 0)
  store i32 %19, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %52

21:                                               ; preds = %1
  %22 = load i32, i32* %7, align 4
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = call i32 @perror(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @EX_SOFTWARE, align 4
  %27 = call i32 @exit(i32 %26) #3
  unreachable

28:                                               ; preds = %21
  %29 = load i32, i32* %7, align 4
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %31, label %48

31:                                               ; preds = %28
  %32 = load i8*, i8** %3, align 8
  %33 = call %struct.TYPE_17__* @symbol_create(i8* %32)
  store %struct.TYPE_17__* %33, %struct.TYPE_17__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %6, i32 0, i32 1
  store %struct.TYPE_17__** %8, %struct.TYPE_17__*** %34, align 8
  %35 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %6, i32 0, i32 0
  store i32 8, i32* %35, align 8
  %36 = load %struct.TYPE_19__*, %struct.TYPE_19__** @symtable, align 8
  %37 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %36, i32 0, i32 1
  %38 = load i64 (%struct.TYPE_19__*, %struct.TYPE_18__*, %struct.TYPE_18__*, i32)*, i64 (%struct.TYPE_19__*, %struct.TYPE_18__*, %struct.TYPE_18__*, i32)** %37, align 8
  %39 = load %struct.TYPE_19__*, %struct.TYPE_19__** @symtable, align 8
  %40 = call i64 %38(%struct.TYPE_19__* %39, %struct.TYPE_18__* %5, %struct.TYPE_18__* %6, i32 0)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %31
  %43 = call i32 @perror(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %44 = load i32, i32* @EX_SOFTWARE, align 4
  %45 = call i32 @exit(i32 %44) #3
  unreachable

46:                                               ; preds = %31
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  store %struct.TYPE_17__* %47, %struct.TYPE_17__** %2, align 8
  br label %73

48:                                               ; preds = %28
  %49 = call i32 @perror(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  %50 = load i32, i32* @EX_SOFTWARE, align 4
  %51 = call i32 @exit(i32 %50) #3
  unreachable

52:                                               ; preds = %1
  %53 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %6, i32 0, i32 1
  %54 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %53, align 8
  %55 = call i32 @memcpy(%struct.TYPE_17__** %4, %struct.TYPE_17__** %54, i32 8)
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %57, align 4
  %60 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %6, i32 0, i32 1
  store %struct.TYPE_17__** %4, %struct.TYPE_17__*** %60, align 8
  %61 = load %struct.TYPE_19__*, %struct.TYPE_19__** @symtable, align 8
  %62 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %61, i32 0, i32 1
  %63 = load i64 (%struct.TYPE_19__*, %struct.TYPE_18__*, %struct.TYPE_18__*, i32)*, i64 (%struct.TYPE_19__*, %struct.TYPE_18__*, %struct.TYPE_18__*, i32)** %62, align 8
  %64 = load %struct.TYPE_19__*, %struct.TYPE_19__** @symtable, align 8
  %65 = call i64 %63(%struct.TYPE_19__* %64, %struct.TYPE_18__* %5, %struct.TYPE_18__* %6, i32 0)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %52
  %68 = call i32 @perror(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %69 = load i32, i32* @EX_SOFTWARE, align 4
  %70 = call i32 @exit(i32 %69) #3
  unreachable

71:                                               ; preds = %52
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  store %struct.TYPE_17__* %72, %struct.TYPE_17__** %2, align 8
  br label %73

73:                                               ; preds = %71, %46
  %74 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  ret %struct.TYPE_17__* %74
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @perror(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local %struct.TYPE_17__* @symbol_create(i8*) #1

declare dso_local i32 @memcpy(%struct.TYPE_17__**, %struct.TYPE_17__**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
