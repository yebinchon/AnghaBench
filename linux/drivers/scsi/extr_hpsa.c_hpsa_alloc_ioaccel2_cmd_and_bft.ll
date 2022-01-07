; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_hpsa.c_hpsa_alloc_ioaccel2_cmd_and_bft.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_hpsa.c_hpsa_alloc_ioaccel2_cmd_and_bft.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctlr_info = type { i32, i32, i32*, i32*, i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@IOACCEL2_MAXSGENTRIES = common dso_local global i32 0, align 4
@IOACCEL2_COMMANDLIST_ALIGNMENT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ctlr_info*)* @hpsa_alloc_ioaccel2_cmd_and_bft to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hpsa_alloc_ioaccel2_cmd_and_bft(%struct.ctlr_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ctlr_info*, align 8
  %4 = alloca i32, align 4
  store %struct.ctlr_info* %0, %struct.ctlr_info** %3, align 8
  %5 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %6 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %5, i32 0, i32 6
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = call i32 @readl(i32* %8)
  %10 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %11 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 8
  %12 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %13 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @IOACCEL2_MAXSGENTRIES, align 4
  %16 = icmp sgt i32 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %1
  %18 = load i32, i32* @IOACCEL2_MAXSGENTRIES, align 4
  %19 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %20 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  br label %21

21:                                               ; preds = %17, %1
  %22 = load i32, i32* @IOACCEL2_COMMANDLIST_ALIGNMENT, align 4
  %23 = sext i32 %22 to i64
  %24 = urem i64 4, %23
  %25 = trunc i64 %24 to i32
  %26 = call i32 @BUILD_BUG_ON(i32 %25)
  %27 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %28 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %27, i32 0, i32 5
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %32 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = sext i32 %33 to i64
  %35 = mul i64 %34, 4
  %36 = trunc i64 %35 to i32
  %37 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %38 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %37, i32 0, i32 4
  %39 = load i32, i32* @GFP_KERNEL, align 4
  %40 = call i32* @dma_alloc_coherent(i32* %30, i32 %36, i32* %38, i32 %39)
  %41 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %42 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %41, i32 0, i32 2
  store i32* %40, i32** %42, align 8
  %43 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %44 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = add nsw i32 %45, 1
  %47 = sext i32 %46 to i64
  %48 = mul i64 %47, 4
  %49 = trunc i64 %48 to i32
  %50 = load i32, i32* @GFP_KERNEL, align 4
  %51 = call i32* @kmalloc(i32 %49, i32 %50)
  %52 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %53 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %52, i32 0, i32 3
  store i32* %51, i32** %53, align 8
  %54 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %55 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %54, i32 0, i32 2
  %56 = load i32*, i32** %55, align 8
  %57 = icmp eq i32* %56, null
  br i1 %57, label %63, label %58

58:                                               ; preds = %21
  %59 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %60 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %59, i32 0, i32 3
  %61 = load i32*, i32** %60, align 8
  %62 = icmp eq i32* %61, null
  br i1 %62, label %63, label %66

63:                                               ; preds = %58, %21
  %64 = load i32, i32* @ENOMEM, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %4, align 4
  br label %83

66:                                               ; preds = %58
  %67 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %68 = call i32 @hpsa_allocate_ioaccel2_sg_chain_blocks(%struct.ctlr_info* %67)
  store i32 %68, i32* %4, align 4
  %69 = load i32, i32* %4, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %66
  br label %83

72:                                               ; preds = %66
  %73 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %74 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %73, i32 0, i32 2
  %75 = load i32*, i32** %74, align 8
  %76 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %77 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = sext i32 %78 to i64
  %80 = mul i64 %79, 4
  %81 = trunc i64 %80 to i32
  %82 = call i32 @memset(i32* %75, i32 0, i32 %81)
  store i32 0, i32* %2, align 4
  br label %87

83:                                               ; preds = %71, %63
  %84 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %85 = call i32 @hpsa_free_ioaccel2_cmd_and_bft(%struct.ctlr_info* %84)
  %86 = load i32, i32* %4, align 4
  store i32 %86, i32* %2, align 4
  br label %87

87:                                               ; preds = %83, %72
  %88 = load i32, i32* %2, align 4
  ret i32 %88
}

declare dso_local i32 @readl(i32*) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32* @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @hpsa_allocate_ioaccel2_sg_chain_blocks(%struct.ctlr_info*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @hpsa_free_ioaccel2_cmd_and_bft(%struct.ctlr_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
