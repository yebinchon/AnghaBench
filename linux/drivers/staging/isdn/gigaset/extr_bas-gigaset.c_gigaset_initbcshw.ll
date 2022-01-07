; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/isdn/gigaset/extr_bas-gigaset.c_gigaset_initbcshw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/isdn/gigaset/extr_bas-gigaset.c_gigaset_initbcshw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bc_state = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.bas_bc_state* }
%struct.bas_bc_state = type { i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32*, i32**, i32, i32, i8*, i64, i32*, i32, i32, %struct.TYPE_3__*, i32, i32, i64 }
%struct.TYPE_3__ = type { %struct.bc_state*, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"out of memory\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@BAS_OUTURBS = common dso_local global i32 0, align 4
@write_iso_tasklet = common dso_local global i32 0, align 4
@BAS_INURBS = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@read_iso_tasklet = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bc_state*)* @gigaset_initbcshw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gigaset_initbcshw(%struct.bc_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bc_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bas_bc_state*, align 8
  store %struct.bc_state* %0, %struct.bc_state** %3, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call i8* @kmalloc(i32 200, i32 %6)
  %8 = bitcast i8* %7 to %struct.bas_bc_state*
  store %struct.bas_bc_state* %8, %struct.bas_bc_state** %5, align 8
  %9 = load %struct.bc_state*, %struct.bc_state** %3, align 8
  %10 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  store %struct.bas_bc_state* %8, %struct.bas_bc_state** %11, align 8
  %12 = load %struct.bas_bc_state*, %struct.bas_bc_state** %5, align 8
  %13 = icmp ne %struct.bas_bc_state* %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %1
  %15 = call i32 @pr_err(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %139

18:                                               ; preds = %1
  %19 = load %struct.bas_bc_state*, %struct.bas_bc_state** %5, align 8
  %20 = getelementptr inbounds %struct.bas_bc_state, %struct.bas_bc_state* %19, i32 0, i32 27
  store i64 0, i64* %20, align 8
  %21 = load %struct.bas_bc_state*, %struct.bas_bc_state** %5, align 8
  %22 = getelementptr inbounds %struct.bas_bc_state, %struct.bas_bc_state* %21, i32 0, i32 26
  %23 = call i32 @atomic_set(i32* %22, i32 0)
  %24 = load %struct.bas_bc_state*, %struct.bas_bc_state** %5, align 8
  %25 = getelementptr inbounds %struct.bas_bc_state, %struct.bas_bc_state* %24, i32 0, i32 25
  %26 = call i32 @spin_lock_init(i32* %25)
  store i32 0, i32* %4, align 4
  br label %27

27:                                               ; preds = %47, %18
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @BAS_OUTURBS, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %50

31:                                               ; preds = %27
  %32 = load %struct.bas_bc_state*, %struct.bas_bc_state** %5, align 8
  %33 = getelementptr inbounds %struct.bas_bc_state, %struct.bas_bc_state* %32, i32 0, i32 24
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = load i32, i32* %4, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  store i32* null, i32** %38, align 8
  %39 = load %struct.bc_state*, %struct.bc_state** %3, align 8
  %40 = load %struct.bas_bc_state*, %struct.bas_bc_state** %5, align 8
  %41 = getelementptr inbounds %struct.bas_bc_state, %struct.bas_bc_state* %40, i32 0, i32 24
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = load i32, i32* %4, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  store %struct.bc_state* %39, %struct.bc_state** %46, align 8
  br label %47

47:                                               ; preds = %31
  %48 = load i32, i32* %4, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %4, align 4
  br label %27

50:                                               ; preds = %27
  %51 = load %struct.bas_bc_state*, %struct.bas_bc_state** %5, align 8
  %52 = getelementptr inbounds %struct.bas_bc_state, %struct.bas_bc_state* %51, i32 0, i32 21
  store i32* null, i32** %52, align 8
  %53 = load %struct.bas_bc_state*, %struct.bas_bc_state** %5, align 8
  %54 = getelementptr inbounds %struct.bas_bc_state, %struct.bas_bc_state* %53, i32 0, i32 22
  store i32 0, i32* %54, align 8
  %55 = load %struct.bas_bc_state*, %struct.bas_bc_state** %5, align 8
  %56 = getelementptr inbounds %struct.bas_bc_state, %struct.bas_bc_state* %55, i32 0, i32 23
  store i32 0, i32* %56, align 4
  %57 = load %struct.bas_bc_state*, %struct.bas_bc_state** %5, align 8
  %58 = getelementptr inbounds %struct.bas_bc_state, %struct.bas_bc_state* %57, i32 0, i32 20
  store i64 0, i64* %58, align 8
  %59 = load i32, i32* @GFP_KERNEL, align 4
  %60 = call i8* @kmalloc(i32 4, i32 %59)
  %61 = load %struct.bas_bc_state*, %struct.bas_bc_state** %5, align 8
  %62 = getelementptr inbounds %struct.bas_bc_state, %struct.bas_bc_state* %61, i32 0, i32 19
  store i8* %60, i8** %62, align 8
  %63 = load %struct.bas_bc_state*, %struct.bas_bc_state** %5, align 8
  %64 = getelementptr inbounds %struct.bas_bc_state, %struct.bas_bc_state* %63, i32 0, i32 19
  %65 = load i8*, i8** %64, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %76, label %67

67:                                               ; preds = %50
  %68 = call i32 @pr_err(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %69 = load %struct.bas_bc_state*, %struct.bas_bc_state** %5, align 8
  %70 = call i32 @kfree(%struct.bas_bc_state* %69)
  %71 = load %struct.bc_state*, %struct.bc_state** %3, align 8
  %72 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  store %struct.bas_bc_state* null, %struct.bas_bc_state** %73, align 8
  %74 = load i32, i32* @ENOMEM, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %2, align 4
  br label %139

76:                                               ; preds = %50
  %77 = load %struct.bas_bc_state*, %struct.bas_bc_state** %5, align 8
  %78 = getelementptr inbounds %struct.bas_bc_state, %struct.bas_bc_state* %77, i32 0, i32 18
  %79 = load i32, i32* @write_iso_tasklet, align 4
  %80 = load %struct.bc_state*, %struct.bc_state** %3, align 8
  %81 = ptrtoint %struct.bc_state* %80 to i64
  %82 = call i32 @tasklet_init(i32* %78, i32 %79, i64 %81)
  %83 = load %struct.bas_bc_state*, %struct.bas_bc_state** %5, align 8
  %84 = getelementptr inbounds %struct.bas_bc_state, %struct.bas_bc_state* %83, i32 0, i32 17
  %85 = call i32 @spin_lock_init(i32* %84)
  store i32 0, i32* %4, align 4
  br label %86

86:                                               ; preds = %97, %76
  %87 = load i32, i32* %4, align 4
  %88 = load i32, i32* @BAS_INURBS, align 4
  %89 = icmp slt i32 %87, %88
  br i1 %89, label %90, label %100

90:                                               ; preds = %86
  %91 = load %struct.bas_bc_state*, %struct.bas_bc_state** %5, align 8
  %92 = getelementptr inbounds %struct.bas_bc_state, %struct.bas_bc_state* %91, i32 0, i32 16
  %93 = load i32**, i32*** %92, align 8
  %94 = load i32, i32* %4, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32*, i32** %93, i64 %95
  store i32* null, i32** %96, align 8
  br label %97

97:                                               ; preds = %90
  %98 = load i32, i32* %4, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %4, align 4
  br label %86

100:                                              ; preds = %86
  %101 = load %struct.bas_bc_state*, %struct.bas_bc_state** %5, align 8
  %102 = getelementptr inbounds %struct.bas_bc_state, %struct.bas_bc_state* %101, i32 0, i32 15
  store i32* null, i32** %102, align 8
  %103 = load i32, i32* @EINPROGRESS, align 4
  %104 = sub nsw i32 0, %103
  %105 = load %struct.bas_bc_state*, %struct.bas_bc_state** %5, align 8
  %106 = getelementptr inbounds %struct.bas_bc_state, %struct.bas_bc_state* %105, i32 0, i32 14
  store i32 %104, i32* %106, align 8
  %107 = load %struct.bas_bc_state*, %struct.bas_bc_state** %5, align 8
  %108 = getelementptr inbounds %struct.bas_bc_state, %struct.bas_bc_state* %107, i32 0, i32 13
  store i64 0, i64* %108, align 8
  %109 = load %struct.bas_bc_state*, %struct.bas_bc_state** %5, align 8
  %110 = getelementptr inbounds %struct.bas_bc_state, %struct.bas_bc_state* %109, i32 0, i32 12
  store i64 0, i64* %110, align 8
  %111 = load %struct.bas_bc_state*, %struct.bas_bc_state** %5, align 8
  %112 = getelementptr inbounds %struct.bas_bc_state, %struct.bas_bc_state* %111, i32 0, i32 11
  store i64 0, i64* %112, align 8
  %113 = load %struct.bas_bc_state*, %struct.bas_bc_state** %5, align 8
  %114 = getelementptr inbounds %struct.bas_bc_state, %struct.bas_bc_state* %113, i32 0, i32 10
  store i64 0, i64* %114, align 8
  %115 = load %struct.bas_bc_state*, %struct.bas_bc_state** %5, align 8
  %116 = getelementptr inbounds %struct.bas_bc_state, %struct.bas_bc_state* %115, i32 0, i32 9
  store i64 0, i64* %116, align 8
  %117 = load %struct.bas_bc_state*, %struct.bas_bc_state** %5, align 8
  %118 = getelementptr inbounds %struct.bas_bc_state, %struct.bas_bc_state* %117, i32 0, i32 8
  store i64 0, i64* %118, align 8
  %119 = load %struct.bas_bc_state*, %struct.bas_bc_state** %5, align 8
  %120 = getelementptr inbounds %struct.bas_bc_state, %struct.bas_bc_state* %119, i32 0, i32 7
  store i64 0, i64* %120, align 8
  %121 = load %struct.bas_bc_state*, %struct.bas_bc_state** %5, align 8
  %122 = getelementptr inbounds %struct.bas_bc_state, %struct.bas_bc_state* %121, i32 0, i32 6
  store i64 0, i64* %122, align 8
  %123 = load %struct.bas_bc_state*, %struct.bas_bc_state** %5, align 8
  %124 = getelementptr inbounds %struct.bas_bc_state, %struct.bas_bc_state* %123, i32 0, i32 5
  store i64 0, i64* %124, align 8
  %125 = load %struct.bas_bc_state*, %struct.bas_bc_state** %5, align 8
  %126 = getelementptr inbounds %struct.bas_bc_state, %struct.bas_bc_state* %125, i32 0, i32 4
  store i64 0, i64* %126, align 8
  %127 = load %struct.bas_bc_state*, %struct.bas_bc_state** %5, align 8
  %128 = getelementptr inbounds %struct.bas_bc_state, %struct.bas_bc_state* %127, i32 0, i32 3
  store i64 0, i64* %128, align 8
  %129 = load %struct.bas_bc_state*, %struct.bas_bc_state** %5, align 8
  %130 = getelementptr inbounds %struct.bas_bc_state, %struct.bas_bc_state* %129, i32 0, i32 2
  store i64 0, i64* %130, align 8
  %131 = load %struct.bas_bc_state*, %struct.bas_bc_state** %5, align 8
  %132 = getelementptr inbounds %struct.bas_bc_state, %struct.bas_bc_state* %131, i32 0, i32 1
  store i64 0, i64* %132, align 8
  %133 = load %struct.bas_bc_state*, %struct.bas_bc_state** %5, align 8
  %134 = getelementptr inbounds %struct.bas_bc_state, %struct.bas_bc_state* %133, i32 0, i32 0
  %135 = load i32, i32* @read_iso_tasklet, align 4
  %136 = load %struct.bc_state*, %struct.bc_state** %3, align 8
  %137 = ptrtoint %struct.bc_state* %136 to i64
  %138 = call i32 @tasklet_init(i32* %134, i32 %135, i64 %137)
  store i32 0, i32* %2, align 4
  br label %139

139:                                              ; preds = %100, %67, %14
  %140 = load i32, i32* %2, align 4
  ret i32 %140
}

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @kfree(%struct.bas_bc_state*) #1

declare dso_local i32 @tasklet_init(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
