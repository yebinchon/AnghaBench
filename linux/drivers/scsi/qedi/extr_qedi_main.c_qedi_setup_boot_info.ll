; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_main.c_qedi_setup_boot_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_main.c_qedi_setup_boot_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qedi_ctx = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.iscsi_boot_kobj = type { i32 }

@EPERM = common dso_local global i32 0, align 4
@qedi_show_boot_tgt_pri_info = common dso_local global i32 0, align 4
@qedi_tgt_get_attr_visibility = common dso_local global i32 0, align 4
@qedi_boot_release = common dso_local global i32 0, align 4
@qedi_show_boot_tgt_sec_info = common dso_local global i32 0, align 4
@qedi_show_boot_ini_info = common dso_local global i32 0, align 4
@qedi_ini_get_attr_visibility = common dso_local global i32 0, align 4
@qedi_show_boot_eth_info = common dso_local global i32 0, align 4
@qedi_eth_get_attr_visibility = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qedi_ctx*)* @qedi_setup_boot_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qedi_setup_boot_info(%struct.qedi_ctx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qedi_ctx*, align 8
  %4 = alloca %struct.iscsi_boot_kobj*, align 8
  store %struct.qedi_ctx* %0, %struct.qedi_ctx** %3, align 8
  %5 = load %struct.qedi_ctx*, %struct.qedi_ctx** %3, align 8
  %6 = call i64 @qedi_get_boot_info(%struct.qedi_ctx* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load i32, i32* @EPERM, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %2, align 4
  br label %114

11:                                               ; preds = %1
  %12 = load %struct.qedi_ctx*, %struct.qedi_ctx** %3, align 8
  %13 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %12, i32 0, i32 1
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @iscsi_boot_create_host_kset(i32 %16)
  %18 = load %struct.qedi_ctx*, %struct.qedi_ctx** %3, align 8
  %19 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load %struct.qedi_ctx*, %struct.qedi_ctx** %3, align 8
  %21 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %11
  br label %107

25:                                               ; preds = %11
  %26 = load %struct.qedi_ctx*, %struct.qedi_ctx** %3, align 8
  %27 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %26, i32 0, i32 1
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = call i32 @scsi_host_get(%struct.TYPE_3__* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %25
  br label %107

32:                                               ; preds = %25
  %33 = load %struct.qedi_ctx*, %struct.qedi_ctx** %3, align 8
  %34 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.qedi_ctx*, %struct.qedi_ctx** %3, align 8
  %37 = load i32, i32* @qedi_show_boot_tgt_pri_info, align 4
  %38 = load i32, i32* @qedi_tgt_get_attr_visibility, align 4
  %39 = load i32, i32* @qedi_boot_release, align 4
  %40 = call %struct.iscsi_boot_kobj* @iscsi_boot_create_target(i32 %35, i32 0, %struct.qedi_ctx* %36, i32 %37, i32 %38, i32 %39)
  store %struct.iscsi_boot_kobj* %40, %struct.iscsi_boot_kobj** %4, align 8
  %41 = load %struct.iscsi_boot_kobj*, %struct.iscsi_boot_kobj** %4, align 8
  %42 = icmp ne %struct.iscsi_boot_kobj* %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %32
  br label %102

44:                                               ; preds = %32
  %45 = load %struct.qedi_ctx*, %struct.qedi_ctx** %3, align 8
  %46 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %45, i32 0, i32 1
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = call i32 @scsi_host_get(%struct.TYPE_3__* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %44
  br label %107

51:                                               ; preds = %44
  %52 = load %struct.qedi_ctx*, %struct.qedi_ctx** %3, align 8
  %53 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.qedi_ctx*, %struct.qedi_ctx** %3, align 8
  %56 = load i32, i32* @qedi_show_boot_tgt_sec_info, align 4
  %57 = load i32, i32* @qedi_tgt_get_attr_visibility, align 4
  %58 = load i32, i32* @qedi_boot_release, align 4
  %59 = call %struct.iscsi_boot_kobj* @iscsi_boot_create_target(i32 %54, i32 1, %struct.qedi_ctx* %55, i32 %56, i32 %57, i32 %58)
  store %struct.iscsi_boot_kobj* %59, %struct.iscsi_boot_kobj** %4, align 8
  %60 = load %struct.iscsi_boot_kobj*, %struct.iscsi_boot_kobj** %4, align 8
  %61 = icmp ne %struct.iscsi_boot_kobj* %60, null
  br i1 %61, label %63, label %62

62:                                               ; preds = %51
  br label %102

63:                                               ; preds = %51
  %64 = load %struct.qedi_ctx*, %struct.qedi_ctx** %3, align 8
  %65 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %64, i32 0, i32 1
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %65, align 8
  %67 = call i32 @scsi_host_get(%struct.TYPE_3__* %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %63
  br label %107

70:                                               ; preds = %63
  %71 = load %struct.qedi_ctx*, %struct.qedi_ctx** %3, align 8
  %72 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.qedi_ctx*, %struct.qedi_ctx** %3, align 8
  %75 = load i32, i32* @qedi_show_boot_ini_info, align 4
  %76 = load i32, i32* @qedi_ini_get_attr_visibility, align 4
  %77 = load i32, i32* @qedi_boot_release, align 4
  %78 = call %struct.iscsi_boot_kobj* @iscsi_boot_create_initiator(i32 %73, i32 0, %struct.qedi_ctx* %74, i32 %75, i32 %76, i32 %77)
  store %struct.iscsi_boot_kobj* %78, %struct.iscsi_boot_kobj** %4, align 8
  %79 = load %struct.iscsi_boot_kobj*, %struct.iscsi_boot_kobj** %4, align 8
  %80 = icmp ne %struct.iscsi_boot_kobj* %79, null
  br i1 %80, label %82, label %81

81:                                               ; preds = %70
  br label %102

82:                                               ; preds = %70
  %83 = load %struct.qedi_ctx*, %struct.qedi_ctx** %3, align 8
  %84 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %83, i32 0, i32 1
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %84, align 8
  %86 = call i32 @scsi_host_get(%struct.TYPE_3__* %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %82
  br label %107

89:                                               ; preds = %82
  %90 = load %struct.qedi_ctx*, %struct.qedi_ctx** %3, align 8
  %91 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.qedi_ctx*, %struct.qedi_ctx** %3, align 8
  %94 = load i32, i32* @qedi_show_boot_eth_info, align 4
  %95 = load i32, i32* @qedi_eth_get_attr_visibility, align 4
  %96 = load i32, i32* @qedi_boot_release, align 4
  %97 = call %struct.iscsi_boot_kobj* @iscsi_boot_create_ethernet(i32 %92, i32 0, %struct.qedi_ctx* %93, i32 %94, i32 %95, i32 %96)
  store %struct.iscsi_boot_kobj* %97, %struct.iscsi_boot_kobj** %4, align 8
  %98 = load %struct.iscsi_boot_kobj*, %struct.iscsi_boot_kobj** %4, align 8
  %99 = icmp ne %struct.iscsi_boot_kobj* %98, null
  br i1 %99, label %101, label %100

100:                                              ; preds = %89
  br label %102

101:                                              ; preds = %89
  store i32 0, i32* %2, align 4
  br label %114

102:                                              ; preds = %100, %81, %62, %43
  %103 = load %struct.qedi_ctx*, %struct.qedi_ctx** %3, align 8
  %104 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %103, i32 0, i32 1
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %104, align 8
  %106 = call i32 @scsi_host_put(%struct.TYPE_3__* %105)
  br label %107

107:                                              ; preds = %102, %88, %69, %50, %31, %24
  %108 = load %struct.qedi_ctx*, %struct.qedi_ctx** %3, align 8
  %109 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @iscsi_boot_destroy_kset(i32 %110)
  %112 = load i32, i32* @ENOMEM, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %2, align 4
  br label %114

114:                                              ; preds = %107, %101, %8
  %115 = load i32, i32* %2, align 4
  ret i32 %115
}

declare dso_local i64 @qedi_get_boot_info(%struct.qedi_ctx*) #1

declare dso_local i32 @iscsi_boot_create_host_kset(i32) #1

declare dso_local i32 @scsi_host_get(%struct.TYPE_3__*) #1

declare dso_local %struct.iscsi_boot_kobj* @iscsi_boot_create_target(i32, i32, %struct.qedi_ctx*, i32, i32, i32) #1

declare dso_local %struct.iscsi_boot_kobj* @iscsi_boot_create_initiator(i32, i32, %struct.qedi_ctx*, i32, i32, i32) #1

declare dso_local %struct.iscsi_boot_kobj* @iscsi_boot_create_ethernet(i32, i32, %struct.qedi_ctx*, i32, i32, i32) #1

declare dso_local i32 @scsi_host_put(%struct.TYPE_3__*) #1

declare dso_local i32 @iscsi_boot_destroy_kset(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
