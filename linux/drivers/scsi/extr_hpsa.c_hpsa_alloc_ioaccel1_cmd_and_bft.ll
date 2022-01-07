; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_hpsa.c_hpsa_alloc_ioaccel1_cmd_and_bft.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_hpsa.c_hpsa_alloc_ioaccel1_cmd_and_bft.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctlr_info = type { i32, i32, i32*, i32*, i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@IOACCEL1_MAXSGENTRIES = common dso_local global i32 0, align 4
@IOACCEL1_COMMANDLIST_ALIGNMENT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ctlr_info*)* @hpsa_alloc_ioaccel1_cmd_and_bft to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hpsa_alloc_ioaccel1_cmd_and_bft(%struct.ctlr_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ctlr_info*, align 8
  store %struct.ctlr_info* %0, %struct.ctlr_info** %3, align 8
  %4 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %5 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %4, i32 0, i32 6
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = call i32 @readl(i32* %7)
  %9 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %10 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %9, i32 0, i32 0
  store i32 %8, i32* %10, align 8
  %11 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %12 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @IOACCEL1_MAXSGENTRIES, align 4
  %15 = icmp sgt i32 %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = load i32, i32* @IOACCEL1_MAXSGENTRIES, align 4
  %18 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %19 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  br label %20

20:                                               ; preds = %16, %1
  %21 = load i32, i32* @IOACCEL1_COMMANDLIST_ALIGNMENT, align 4
  %22 = sext i32 %21 to i64
  %23 = urem i64 4, %22
  %24 = trunc i64 %23 to i32
  %25 = call i32 @BUILD_BUG_ON(i32 %24)
  %26 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %27 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %26, i32 0, i32 5
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %31 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = sext i32 %32 to i64
  %34 = mul i64 %33, 4
  %35 = trunc i64 %34 to i32
  %36 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %37 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %36, i32 0, i32 4
  %38 = load i32, i32* @GFP_KERNEL, align 4
  %39 = call i32* @dma_alloc_coherent(i32* %29, i32 %35, i32* %37, i32 %38)
  %40 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %41 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %40, i32 0, i32 2
  store i32* %39, i32** %41, align 8
  %42 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %43 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = add nsw i32 %44, 1
  %46 = sext i32 %45 to i64
  %47 = mul i64 %46, 4
  %48 = trunc i64 %47 to i32
  %49 = load i32, i32* @GFP_KERNEL, align 4
  %50 = call i32* @kmalloc(i32 %48, i32 %49)
  %51 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %52 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %51, i32 0, i32 3
  store i32* %50, i32** %52, align 8
  %53 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %54 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %53, i32 0, i32 2
  %55 = load i32*, i32** %54, align 8
  %56 = icmp eq i32* %55, null
  br i1 %56, label %62, label %57

57:                                               ; preds = %20
  %58 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %59 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %58, i32 0, i32 3
  %60 = load i32*, i32** %59, align 8
  %61 = icmp eq i32* %60, null
  br i1 %61, label %62, label %63

62:                                               ; preds = %57, %20
  br label %74

63:                                               ; preds = %57
  %64 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %65 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %64, i32 0, i32 2
  %66 = load i32*, i32** %65, align 8
  %67 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %68 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = sext i32 %69 to i64
  %71 = mul i64 %70, 4
  %72 = trunc i64 %71 to i32
  %73 = call i32 @memset(i32* %66, i32 0, i32 %72)
  store i32 0, i32* %2, align 4
  br label %79

74:                                               ; preds = %62
  %75 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %76 = call i32 @hpsa_free_ioaccel1_cmd_and_bft(%struct.ctlr_info* %75)
  %77 = load i32, i32* @ENOMEM, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %2, align 4
  br label %79

79:                                               ; preds = %74, %63
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local i32 @readl(i32*) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32* @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @hpsa_free_ioaccel1_cmd_and_bft(%struct.ctlr_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
