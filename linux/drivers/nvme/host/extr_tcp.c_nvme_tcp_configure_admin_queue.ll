; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_tcp.c_nvme_tcp_configure_admin_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_tcp.c_nvme_tcp_configure_admin_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_ctrl = type { i8*, i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvme_ctrl*, i32)* @nvme_tcp_configure_admin_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_tcp_configure_admin_queue(%struct.nvme_ctrl* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nvme_ctrl*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.nvme_ctrl* %0, %struct.nvme_ctrl** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %4, align 8
  %8 = call i32 @nvme_tcp_alloc_admin_queue(%struct.nvme_ctrl* %7)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* %6, align 4
  store i32 %12, i32* %3, align 4
  br label %123

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %66

16:                                               ; preds = %13
  %17 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %4, align 8
  %18 = call i8* @nvme_tcp_alloc_tagset(%struct.nvme_ctrl* %17, i32 1)
  %19 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %4, align 8
  %20 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %19, i32 0, i32 0
  store i8* %18, i8** %20, align 8
  %21 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %4, align 8
  %22 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = call i64 @IS_ERR(i8* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %16
  %27 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %4, align 8
  %28 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = call i32 @PTR_ERR(i8* %29)
  store i32 %30, i32* %6, align 4
  br label %119

31:                                               ; preds = %16
  %32 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %4, align 8
  %33 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = call i8* @blk_mq_init_queue(i8* %34)
  %36 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %4, align 8
  %37 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %36, i32 0, i32 1
  store i8* %35, i8** %37, align 8
  %38 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %4, align 8
  %39 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %38, i32 0, i32 1
  %40 = load i8*, i8** %39, align 8
  %41 = call i64 @IS_ERR(i8* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %31
  %44 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %4, align 8
  %45 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %44, i32 0, i32 1
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 @PTR_ERR(i8* %46)
  store i32 %47, i32* %6, align 4
  br label %110

48:                                               ; preds = %31
  %49 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %4, align 8
  %50 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = call i8* @blk_mq_init_queue(i8* %51)
  %53 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %4, align 8
  %54 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %53, i32 0, i32 2
  store i8* %52, i8** %54, align 8
  %55 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %4, align 8
  %56 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %55, i32 0, i32 2
  %57 = load i8*, i8** %56, align 8
  %58 = call i64 @IS_ERR(i8* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %48
  %61 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %4, align 8
  %62 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %61, i32 0, i32 2
  %63 = load i8*, i8** %62, align 8
  %64 = call i32 @PTR_ERR(i8* %63)
  store i32 %64, i32* %6, align 4
  br label %101

65:                                               ; preds = %48
  br label %66

66:                                               ; preds = %65, %13
  %67 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %4, align 8
  %68 = call i32 @nvme_tcp_start_queue(%struct.nvme_ctrl* %67, i32 0)
  store i32 %68, i32* %6, align 4
  %69 = load i32, i32* %6, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %66
  br label %92

72:                                               ; preds = %66
  %73 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %4, align 8
  %74 = call i32 @nvme_enable_ctrl(%struct.nvme_ctrl* %73)
  store i32 %74, i32* %6, align 4
  %75 = load i32, i32* %6, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %72
  br label %89

78:                                               ; preds = %72
  %79 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %4, align 8
  %80 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %79, i32 0, i32 2
  %81 = load i8*, i8** %80, align 8
  %82 = call i32 @blk_mq_unquiesce_queue(i8* %81)
  %83 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %4, align 8
  %84 = call i32 @nvme_init_identify(%struct.nvme_ctrl* %83)
  store i32 %84, i32* %6, align 4
  %85 = load i32, i32* %6, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %78
  br label %89

88:                                               ; preds = %78
  store i32 0, i32* %3, align 4
  br label %123

89:                                               ; preds = %87, %77
  %90 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %4, align 8
  %91 = call i32 @nvme_tcp_stop_queue(%struct.nvme_ctrl* %90, i32 0)
  br label %92

92:                                               ; preds = %89, %71
  %93 = load i32, i32* %5, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %92
  %96 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %4, align 8
  %97 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %96, i32 0, i32 2
  %98 = load i8*, i8** %97, align 8
  %99 = call i32 @blk_cleanup_queue(i8* %98)
  br label %100

100:                                              ; preds = %95, %92
  br label %101

101:                                              ; preds = %100, %60
  %102 = load i32, i32* %5, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %101
  %105 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %4, align 8
  %106 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %105, i32 0, i32 1
  %107 = load i8*, i8** %106, align 8
  %108 = call i32 @blk_cleanup_queue(i8* %107)
  br label %109

109:                                              ; preds = %104, %101
  br label %110

110:                                              ; preds = %109, %43
  %111 = load i32, i32* %5, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %118

113:                                              ; preds = %110
  %114 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %4, align 8
  %115 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %114, i32 0, i32 0
  %116 = load i8*, i8** %115, align 8
  %117 = call i32 @blk_mq_free_tag_set(i8* %116)
  br label %118

118:                                              ; preds = %113, %110
  br label %119

119:                                              ; preds = %118, %26
  %120 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %4, align 8
  %121 = call i32 @nvme_tcp_free_admin_queue(%struct.nvme_ctrl* %120)
  %122 = load i32, i32* %6, align 4
  store i32 %122, i32* %3, align 4
  br label %123

123:                                              ; preds = %119, %88, %11
  %124 = load i32, i32* %3, align 4
  ret i32 %124
}

declare dso_local i32 @nvme_tcp_alloc_admin_queue(%struct.nvme_ctrl*) #1

declare dso_local i8* @nvme_tcp_alloc_tagset(%struct.nvme_ctrl*, i32) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i8* @blk_mq_init_queue(i8*) #1

declare dso_local i32 @nvme_tcp_start_queue(%struct.nvme_ctrl*, i32) #1

declare dso_local i32 @nvme_enable_ctrl(%struct.nvme_ctrl*) #1

declare dso_local i32 @blk_mq_unquiesce_queue(i8*) #1

declare dso_local i32 @nvme_init_identify(%struct.nvme_ctrl*) #1

declare dso_local i32 @nvme_tcp_stop_queue(%struct.nvme_ctrl*, i32) #1

declare dso_local i32 @blk_cleanup_queue(i8*) #1

declare dso_local i32 @blk_mq_free_tag_set(i8*) #1

declare dso_local i32 @nvme_tcp_free_admin_queue(%struct.nvme_ctrl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
