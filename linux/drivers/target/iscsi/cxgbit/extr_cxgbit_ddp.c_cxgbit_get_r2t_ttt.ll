; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/cxgbit/extr_cxgbit_ddp.c_cxgbit_get_r2t_ttt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/cxgbit/extr_cxgbit_ddp.c_cxgbit_get_r2t_ttt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_conn = type { %struct.cxgbit_sock* }
%struct.cxgbit_sock = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, %struct.cxgbit_device* }
%struct.cxgbit_device = type { i32 }
%struct.iscsi_cmd = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64, i32* }
%struct.iscsi_r2t = type { i32 }
%struct.cxgbit_cmd = type { i32, i32, %struct.cxgbi_task_tag_info }
%struct.cxgbi_task_tag_info = type { i32, i64, i32* }

@EINVAL = common dso_local global i32 0, align 4
@CSK_DDP_ENABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"csk 0x%p, cmd 0x%p, xfer len %u, sgcnt %u no ddp.\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"cdev 0x%p, cmd 0x%p, tag 0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cxgbit_get_r2t_ttt(%struct.iscsi_conn* %0, %struct.iscsi_cmd* %1, %struct.iscsi_r2t* %2) #0 {
  %4 = alloca %struct.iscsi_conn*, align 8
  %5 = alloca %struct.iscsi_cmd*, align 8
  %6 = alloca %struct.iscsi_r2t*, align 8
  %7 = alloca %struct.cxgbit_sock*, align 8
  %8 = alloca %struct.cxgbit_device*, align 8
  %9 = alloca %struct.cxgbit_cmd*, align 8
  %10 = alloca %struct.cxgbi_task_tag_info*, align 8
  %11 = alloca i32, align 4
  store %struct.iscsi_conn* %0, %struct.iscsi_conn** %4, align 8
  store %struct.iscsi_cmd* %1, %struct.iscsi_cmd** %5, align 8
  store %struct.iscsi_r2t* %2, %struct.iscsi_r2t** %6, align 8
  %12 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %13 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %12, i32 0, i32 0
  %14 = load %struct.cxgbit_sock*, %struct.cxgbit_sock** %13, align 8
  store %struct.cxgbit_sock* %14, %struct.cxgbit_sock** %7, align 8
  %15 = load %struct.cxgbit_sock*, %struct.cxgbit_sock** %7, align 8
  %16 = getelementptr inbounds %struct.cxgbit_sock, %struct.cxgbit_sock* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load %struct.cxgbit_device*, %struct.cxgbit_device** %17, align 8
  store %struct.cxgbit_device* %18, %struct.cxgbit_device** %8, align 8
  %19 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %20 = call %struct.cxgbit_cmd* @iscsit_priv_cmd(%struct.iscsi_cmd* %19)
  store %struct.cxgbit_cmd* %20, %struct.cxgbit_cmd** %9, align 8
  %21 = load %struct.cxgbit_cmd*, %struct.cxgbit_cmd** %9, align 8
  %22 = getelementptr inbounds %struct.cxgbit_cmd, %struct.cxgbit_cmd* %21, i32 0, i32 2
  store %struct.cxgbi_task_tag_info* %22, %struct.cxgbi_task_tag_info** %10, align 8
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %11, align 4
  %25 = load %struct.cxgbit_cmd*, %struct.cxgbit_cmd** %9, align 8
  %26 = getelementptr inbounds %struct.cxgbit_cmd, %struct.cxgbit_cmd* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %3
  %30 = load i32, i32* @CSK_DDP_ENABLE, align 4
  %31 = load %struct.cxgbit_sock*, %struct.cxgbit_sock** %7, align 8
  %32 = getelementptr inbounds %struct.cxgbit_sock, %struct.cxgbit_sock* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = call i32 @test_bit(i32 %30, i32* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %29, %3
  br label %80

37:                                               ; preds = %29
  %38 = load %struct.cxgbit_cmd*, %struct.cxgbit_cmd** %9, align 8
  %39 = getelementptr inbounds %struct.cxgbit_cmd, %struct.cxgbit_cmd* %38, i32 0, i32 0
  store i32 0, i32* %39, align 8
  %40 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %41 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 2
  %43 = load i32*, i32** %42, align 8
  %44 = load %struct.cxgbi_task_tag_info*, %struct.cxgbi_task_tag_info** %10, align 8
  %45 = getelementptr inbounds %struct.cxgbi_task_tag_info, %struct.cxgbi_task_tag_info* %44, i32 0, i32 2
  store i32* %43, i32** %45, align 8
  %46 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %47 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.cxgbi_task_tag_info*, %struct.cxgbi_task_tag_info** %10, align 8
  %51 = getelementptr inbounds %struct.cxgbi_task_tag_info, %struct.cxgbi_task_tag_info* %50, i32 0, i32 1
  store i64 %49, i64* %51, align 8
  %52 = load %struct.cxgbit_sock*, %struct.cxgbit_sock** %7, align 8
  %53 = load %struct.cxgbi_task_tag_info*, %struct.cxgbi_task_tag_info** %10, align 8
  %54 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %55 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @cxgbit_ddp_reserve(%struct.cxgbit_sock* %52, %struct.cxgbi_task_tag_info* %53, i32 %57)
  store i32 %58, i32* %11, align 4
  %59 = load i32, i32* %11, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %76

61:                                               ; preds = %37
  %62 = load %struct.cxgbit_sock*, %struct.cxgbit_sock** %7, align 8
  %63 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %64 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %65 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.cxgbi_task_tag_info*, %struct.cxgbi_task_tag_info** %10, align 8
  %69 = getelementptr inbounds %struct.cxgbi_task_tag_info, %struct.cxgbi_task_tag_info* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = call i32 (i8*, %struct.cxgbit_sock*, %struct.iscsi_cmd*, i32, ...) @pr_debug(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), %struct.cxgbit_sock* %62, %struct.iscsi_cmd* %63, i32 %67, i64 %70)
  %72 = load %struct.cxgbi_task_tag_info*, %struct.cxgbi_task_tag_info** %10, align 8
  %73 = getelementptr inbounds %struct.cxgbi_task_tag_info, %struct.cxgbi_task_tag_info* %72, i32 0, i32 2
  store i32* null, i32** %73, align 8
  %74 = load %struct.cxgbi_task_tag_info*, %struct.cxgbi_task_tag_info** %10, align 8
  %75 = getelementptr inbounds %struct.cxgbi_task_tag_info, %struct.cxgbi_task_tag_info* %74, i32 0, i32 1
  store i64 0, i64* %75, align 8
  br label %79

76:                                               ; preds = %37
  %77 = load %struct.cxgbit_cmd*, %struct.cxgbit_cmd** %9, align 8
  %78 = getelementptr inbounds %struct.cxgbit_cmd, %struct.cxgbit_cmd* %77, i32 0, i32 1
  store i32 1, i32* %78, align 4
  br label %79

79:                                               ; preds = %76, %61
  br label %80

80:                                               ; preds = %79, %36
  %81 = load %struct.cxgbit_device*, %struct.cxgbit_device** %8, align 8
  %82 = bitcast %struct.cxgbit_device* %81 to %struct.cxgbit_sock*
  %83 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %84 = load %struct.cxgbi_task_tag_info*, %struct.cxgbi_task_tag_info** %10, align 8
  %85 = getelementptr inbounds %struct.cxgbi_task_tag_info, %struct.cxgbi_task_tag_info* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i32 (i8*, %struct.cxgbit_sock*, %struct.iscsi_cmd*, i32, ...) @pr_debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), %struct.cxgbit_sock* %82, %struct.iscsi_cmd* %83, i32 %86)
  %88 = load %struct.cxgbi_task_tag_info*, %struct.cxgbi_task_tag_info** %10, align 8
  %89 = getelementptr inbounds %struct.cxgbi_task_tag_info, %struct.cxgbi_task_tag_info* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.iscsi_r2t*, %struct.iscsi_r2t** %6, align 8
  %92 = getelementptr inbounds %struct.iscsi_r2t, %struct.iscsi_r2t* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 4
  ret void
}

declare dso_local %struct.cxgbit_cmd* @iscsit_priv_cmd(%struct.iscsi_cmd*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @cxgbit_ddp_reserve(%struct.cxgbit_sock*, %struct.cxgbi_task_tag_info*, i32) #1

declare dso_local i32 @pr_debug(i8*, %struct.cxgbit_sock*, %struct.iscsi_cmd*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
