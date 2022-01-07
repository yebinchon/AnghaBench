; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_proc.c_afs_proc_cell_vlservers_show.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_proc.c_afs_proc_cell_vlservers_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.afs_vl_seq_net_private* }
%struct.afs_vl_seq_net_private = type { %struct.afs_vlserver_list* }
%struct.afs_vlserver_list = type { i64, i64 }
%struct.afs_vlserver_entry = type { i64, i64, i32, i32, %struct.afs_vlserver* }
%struct.afs_vlserver = type { i32, i32 }
%struct.afs_addr_list = type { i64, i64, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@SEQ_START_TOKEN = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [24 x i8] c"# source %s, status %s\0A\00", align 1
@dns_record_sources = common dso_local global i8* null, align 8
@dns_lookup_statuses = common dso_local global i32** null, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"%s [p=%hu w=%hu s=%s,%s]:\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c" %c %pISpc\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @afs_proc_cell_vlservers_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @afs_proc_cell_vlservers_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.afs_vl_seq_net_private*, align 8
  %7 = alloca %struct.afs_vlserver_list*, align 8
  %8 = alloca %struct.afs_vlserver_entry*, align 8
  %9 = alloca %struct.afs_vlserver*, align 8
  %10 = alloca %struct.afs_addr_list*, align 8
  %11 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %13 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %12, i32 0, i32 0
  %14 = load %struct.afs_vl_seq_net_private*, %struct.afs_vl_seq_net_private** %13, align 8
  store %struct.afs_vl_seq_net_private* %14, %struct.afs_vl_seq_net_private** %6, align 8
  %15 = load %struct.afs_vl_seq_net_private*, %struct.afs_vl_seq_net_private** %6, align 8
  %16 = getelementptr inbounds %struct.afs_vl_seq_net_private, %struct.afs_vl_seq_net_private* %15, i32 0, i32 0
  %17 = load %struct.afs_vlserver_list*, %struct.afs_vlserver_list** %16, align 8
  store %struct.afs_vlserver_list* %17, %struct.afs_vlserver_list** %7, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = load i8*, i8** @SEQ_START_TOKEN, align 8
  %20 = icmp eq i8* %18, %19
  br i1 %20, label %21, label %48

21:                                               ; preds = %2
  %22 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %23 = load i8*, i8** @dns_record_sources, align 8
  %24 = load %struct.afs_vlserver_list*, %struct.afs_vlserver_list** %7, align 8
  %25 = icmp ne %struct.afs_vlserver_list* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = load %struct.afs_vlserver_list*, %struct.afs_vlserver_list** %7, align 8
  %28 = getelementptr inbounds %struct.afs_vlserver_list, %struct.afs_vlserver_list* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  br label %31

30:                                               ; preds = %21
  br label %31

31:                                               ; preds = %30, %26
  %32 = phi i64 [ %29, %26 ], [ 0, %30 ]
  %33 = getelementptr inbounds i8, i8* %23, i64 %32
  %34 = load i8, i8* %33, align 1
  %35 = load i32**, i32*** @dns_lookup_statuses, align 8
  %36 = load %struct.afs_vlserver_list*, %struct.afs_vlserver_list** %7, align 8
  %37 = icmp ne %struct.afs_vlserver_list* %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %31
  %39 = load %struct.afs_vlserver_list*, %struct.afs_vlserver_list** %7, align 8
  %40 = getelementptr inbounds %struct.afs_vlserver_list, %struct.afs_vlserver_list* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  br label %43

42:                                               ; preds = %31
  br label %43

43:                                               ; preds = %42, %38
  %44 = phi i64 [ %41, %38 ], [ 0, %42 ]
  %45 = getelementptr inbounds i32*, i32** %35, i64 %44
  %46 = load i32*, i32** %45, align 8
  %47 = call i32 (%struct.seq_file*, i8*, i8, i32*, ...) @seq_printf(%struct.seq_file* %22, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8 signext %34, i32* %46)
  store i32 0, i32* %3, align 4
  br label %135

48:                                               ; preds = %2
  %49 = load i8*, i8** %5, align 8
  %50 = bitcast i8* %49 to %struct.afs_vlserver_entry*
  store %struct.afs_vlserver_entry* %50, %struct.afs_vlserver_entry** %8, align 8
  %51 = load %struct.afs_vlserver_entry*, %struct.afs_vlserver_entry** %8, align 8
  %52 = getelementptr inbounds %struct.afs_vlserver_entry, %struct.afs_vlserver_entry* %51, i32 0, i32 4
  %53 = load %struct.afs_vlserver*, %struct.afs_vlserver** %52, align 8
  store %struct.afs_vlserver* %53, %struct.afs_vlserver** %9, align 8
  %54 = load %struct.afs_vlserver*, %struct.afs_vlserver** %9, align 8
  %55 = getelementptr inbounds %struct.afs_vlserver, %struct.afs_vlserver* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call %struct.afs_addr_list* @rcu_dereference(i32 %56)
  store %struct.afs_addr_list* %57, %struct.afs_addr_list** %10, align 8
  %58 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %59 = load %struct.afs_vlserver*, %struct.afs_vlserver** %9, align 8
  %60 = getelementptr inbounds %struct.afs_vlserver, %struct.afs_vlserver* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = trunc i32 %61 to i8
  %63 = load %struct.afs_vlserver_entry*, %struct.afs_vlserver_entry** %8, align 8
  %64 = getelementptr inbounds %struct.afs_vlserver_entry, %struct.afs_vlserver_entry* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = sext i32 %65 to i64
  %67 = inttoptr i64 %66 to i32*
  %68 = load %struct.afs_vlserver_entry*, %struct.afs_vlserver_entry** %8, align 8
  %69 = getelementptr inbounds %struct.afs_vlserver_entry, %struct.afs_vlserver_entry* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = load i8*, i8** @dns_record_sources, align 8
  %72 = load %struct.afs_addr_list*, %struct.afs_addr_list** %10, align 8
  %73 = icmp ne %struct.afs_addr_list* %72, null
  br i1 %73, label %74, label %78

74:                                               ; preds = %48
  %75 = load %struct.afs_addr_list*, %struct.afs_addr_list** %10, align 8
  %76 = getelementptr inbounds %struct.afs_addr_list, %struct.afs_addr_list* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  br label %82

78:                                               ; preds = %48
  %79 = load %struct.afs_vlserver_entry*, %struct.afs_vlserver_entry** %8, align 8
  %80 = getelementptr inbounds %struct.afs_vlserver_entry, %struct.afs_vlserver_entry* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  br label %82

82:                                               ; preds = %78, %74
  %83 = phi i64 [ %77, %74 ], [ %81, %78 ]
  %84 = getelementptr inbounds i8, i8* %71, i64 %83
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = load i32**, i32*** @dns_lookup_statuses, align 8
  %88 = load %struct.afs_addr_list*, %struct.afs_addr_list** %10, align 8
  %89 = icmp ne %struct.afs_addr_list* %88, null
  br i1 %89, label %90, label %94

90:                                               ; preds = %82
  %91 = load %struct.afs_addr_list*, %struct.afs_addr_list** %10, align 8
  %92 = getelementptr inbounds %struct.afs_addr_list, %struct.afs_addr_list* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  br label %98

94:                                               ; preds = %82
  %95 = load %struct.afs_vlserver_entry*, %struct.afs_vlserver_entry** %8, align 8
  %96 = getelementptr inbounds %struct.afs_vlserver_entry, %struct.afs_vlserver_entry* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  br label %98

98:                                               ; preds = %94, %90
  %99 = phi i64 [ %93, %90 ], [ %97, %94 ]
  %100 = getelementptr inbounds i32*, i32** %87, i64 %99
  %101 = load i32*, i32** %100, align 8
  %102 = call i32 (%struct.seq_file*, i8*, i8, i32*, ...) @seq_printf(%struct.seq_file* %58, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8 signext %62, i32* %67, i32 %70, i32 %86, i32* %101)
  %103 = load %struct.afs_addr_list*, %struct.afs_addr_list** %10, align 8
  %104 = icmp ne %struct.afs_addr_list* %103, null
  br i1 %104, label %105, label %134

105:                                              ; preds = %98
  store i32 0, i32* %11, align 4
  br label %106

106:                                              ; preds = %130, %105
  %107 = load i32, i32* %11, align 4
  %108 = load %struct.afs_addr_list*, %struct.afs_addr_list** %10, align 8
  %109 = getelementptr inbounds %struct.afs_addr_list, %struct.afs_addr_list* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = icmp slt i32 %107, %110
  br i1 %111, label %112, label %133

112:                                              ; preds = %106
  %113 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %114 = load %struct.afs_addr_list*, %struct.afs_addr_list** %10, align 8
  %115 = getelementptr inbounds %struct.afs_addr_list, %struct.afs_addr_list* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* %11, align 4
  %118 = icmp eq i32 %116, %117
  %119 = zext i1 %118 to i64
  %120 = select i1 %118, i32 62, i32 45
  %121 = trunc i32 %120 to i8
  %122 = load %struct.afs_addr_list*, %struct.afs_addr_list** %10, align 8
  %123 = getelementptr inbounds %struct.afs_addr_list, %struct.afs_addr_list* %122, i32 0, i32 4
  %124 = load %struct.TYPE_2__*, %struct.TYPE_2__** %123, align 8
  %125 = load i32, i32* %11, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 0
  %129 = call i32 (%struct.seq_file*, i8*, i8, i32*, ...) @seq_printf(%struct.seq_file* %113, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8 signext %121, i32* %128)
  br label %130

130:                                              ; preds = %112
  %131 = load i32, i32* %11, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %11, align 4
  br label %106

133:                                              ; preds = %106
  br label %134

134:                                              ; preds = %133, %98
  store i32 0, i32* %3, align 4
  br label %135

135:                                              ; preds = %134, %43
  %136 = load i32, i32* %3, align 4
  ret i32 %136
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i8 signext, i32*, ...) #1

declare dso_local %struct.afs_addr_list* @rcu_dereference(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
