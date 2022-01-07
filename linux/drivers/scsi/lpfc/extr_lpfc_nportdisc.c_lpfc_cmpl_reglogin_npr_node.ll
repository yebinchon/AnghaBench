; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_nportdisc.c_lpfc_cmpl_reglogin_npr_node.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_nportdisc.c_lpfc_cmpl_reglogin_npr_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_vport = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }
%struct.lpfc_nodelist = type { i32, i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32* }

@LPFC_SLI_REV4 = common dso_local global i64 0, align 8
@NLP_RPI_REGISTERED = common dso_local global i32 0, align 4
@NLP_LOGO_ACC = common dso_local global i32 0, align 4
@NLP_NODEV_REMOVE = common dso_local global i32 0, align 4
@NLP_STE_FREED_NODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_vport*, %struct.lpfc_nodelist*, i8*, i32)* @lpfc_cmpl_reglogin_npr_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_cmpl_reglogin_npr_node(%struct.lpfc_vport* %0, %struct.lpfc_nodelist* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.lpfc_vport*, align 8
  %7 = alloca %struct.lpfc_nodelist*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca %struct.TYPE_9__*, align 8
  store %struct.lpfc_vport* %0, %struct.lpfc_vport** %6, align 8
  store %struct.lpfc_nodelist* %1, %struct.lpfc_nodelist** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i8*, i8** %8, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %13, %struct.TYPE_10__** %10, align 8
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  store %struct.TYPE_9__* %16, %struct.TYPE_9__** %11, align 8
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %55, label %21

21:                                               ; preds = %4
  %22 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %23 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %22, i32 0, i32 0
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @LPFC_SLI_REV4, align 8
  %28 = icmp slt i64 %26, %27
  br i1 %28, label %29, label %38

29:                                               ; preds = %21
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %37 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 4
  br label %38

38:                                               ; preds = %29, %21
  %39 = load i32, i32* @NLP_RPI_REGISTERED, align 4
  %40 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %41 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, %39
  store i32 %43, i32* %41, align 4
  %44 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %45 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @NLP_LOGO_ACC, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %38
  %51 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %52 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %53 = call i32 @lpfc_unreg_rpi(%struct.lpfc_vport* %51, %struct.lpfc_nodelist* %52)
  br label %54

54:                                               ; preds = %50, %38
  br label %68

55:                                               ; preds = %4
  %56 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %57 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @NLP_NODEV_REMOVE, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %55
  %63 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %64 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %65 = call i32 @lpfc_drop_node(%struct.lpfc_vport* %63, %struct.lpfc_nodelist* %64)
  %66 = load i32, i32* @NLP_STE_FREED_NODE, align 4
  store i32 %66, i32* %5, align 4
  br label %72

67:                                               ; preds = %55
  br label %68

68:                                               ; preds = %67, %54
  %69 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %70 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %5, align 4
  br label %72

72:                                               ; preds = %68, %62
  %73 = load i32, i32* %5, align 4
  ret i32 %73
}

declare dso_local i32 @lpfc_unreg_rpi(%struct.lpfc_vport*, %struct.lpfc_nodelist*) #1

declare dso_local i32 @lpfc_drop_node(%struct.lpfc_vport*, %struct.lpfc_nodelist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
