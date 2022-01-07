; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/storage/extr_jumpshot.c_jumpshot_write_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/storage/extr_jumpshot.c_jumpshot_write_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.us_data = type { i8*, i32, i32 }
%struct.jumpshot_info = type { i32 }
%struct.scatterlist = type { i32 }

@USB_STOR_TRANSPORT_ERROR = common dso_local global i32 0, align 4
@GFP_NOIO = common dso_local global i32 0, align 4
@FROM_XFER_BUF = common dso_local global i32 0, align 4
@USB_STOR_XFER_GOOD = common dso_local global i32 0, align 4
@USB_STOR_TRANSPORT_GOOD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Gah!  Waitcount = 10.  Bad write!?\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.us_data*, %struct.jumpshot_info*, i32, i32)* @jumpshot_write_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jumpshot_write_data(%struct.us_data* %0, %struct.jumpshot_info* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.us_data*, align 8
  %7 = alloca %struct.jumpshot_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8, align 1
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.scatterlist*, align 8
  store %struct.us_data* %0, %struct.us_data** %6, align 8
  store %struct.jumpshot_info* %1, %struct.jumpshot_info** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %20 = load %struct.us_data*, %struct.us_data** %6, align 8
  %21 = getelementptr inbounds %struct.us_data, %struct.us_data* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %10, align 8
  store i32 0, i32* %18, align 4
  store %struct.scatterlist* null, %struct.scatterlist** %19, align 8
  %23 = load i32, i32* %8, align 4
  %24 = icmp sgt i32 %23, 268435455
  br i1 %24, label %25, label %27

25:                                               ; preds = %4
  %26 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  store i32 %26, i32* %5, align 4
  br label %158

27:                                               ; preds = %4
  %28 = load i32, i32* %9, align 4
  %29 = load %struct.jumpshot_info*, %struct.jumpshot_info** %7, align 8
  %30 = getelementptr inbounds %struct.jumpshot_info, %struct.jumpshot_info* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = mul nsw i32 %28, %31
  store i32 %32, i32* %13, align 4
  %33 = load i32, i32* %13, align 4
  %34 = call i8* @min(i32 %33, i32 65536)
  %35 = ptrtoint i8* %34 to i32
  store i32 %35, i32* %14, align 4
  %36 = load i32, i32* %14, align 4
  %37 = load i32, i32* @GFP_NOIO, align 4
  %38 = call i8* @kmalloc(i32 %36, i32 %37)
  store i8* %38, i8** %11, align 8
  %39 = load i8*, i8** %11, align 8
  %40 = icmp eq i8* %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %27
  %42 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  store i32 %42, i32* %5, align 4
  br label %158

43:                                               ; preds = %27
  br label %44

44:                                               ; preds = %147, %43
  %45 = load i32, i32* %13, align 4
  %46 = load i32, i32* %14, align 4
  %47 = call i8* @min(i32 %45, i32 %46)
  %48 = ptrtoint i8* %47 to i32
  store i32 %48, i32* %15, align 4
  %49 = load i32, i32* %15, align 4
  %50 = load %struct.jumpshot_info*, %struct.jumpshot_info** %7, align 8
  %51 = getelementptr inbounds %struct.jumpshot_info, %struct.jumpshot_info* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = sdiv i32 %49, %52
  %54 = and i32 %53, 255
  %55 = trunc i32 %54 to i8
  store i8 %55, i8* %12, align 1
  %56 = load i8*, i8** %11, align 8
  %57 = load i32, i32* %15, align 4
  %58 = load %struct.us_data*, %struct.us_data** %6, align 8
  %59 = getelementptr inbounds %struct.us_data, %struct.us_data* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @FROM_XFER_BUF, align 4
  %62 = call i32 @usb_stor_access_xfer_buf(i8* %56, i32 %57, i32 %60, %struct.scatterlist** %19, i32* %18, i32 %61)
  %63 = load i8*, i8** %10, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 0
  store i8 0, i8* %64, align 1
  %65 = load i8, i8* %12, align 1
  %66 = load i8*, i8** %10, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 1
  store i8 %65, i8* %67, align 1
  %68 = load i32, i32* %8, align 4
  %69 = and i32 %68, 255
  %70 = trunc i32 %69 to i8
  %71 = load i8*, i8** %10, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 2
  store i8 %70, i8* %72, align 1
  %73 = load i32, i32* %8, align 4
  %74 = ashr i32 %73, 8
  %75 = and i32 %74, 255
  %76 = trunc i32 %75 to i8
  %77 = load i8*, i8** %10, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 3
  store i8 %76, i8* %78, align 1
  %79 = load i32, i32* %8, align 4
  %80 = ashr i32 %79, 16
  %81 = and i32 %80, 255
  %82 = trunc i32 %81 to i8
  %83 = load i8*, i8** %10, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 4
  store i8 %82, i8* %84, align 1
  %85 = load i32, i32* %8, align 4
  %86 = ashr i32 %85, 24
  %87 = and i32 %86, 15
  %88 = or i32 224, %87
  %89 = trunc i32 %88 to i8
  %90 = load i8*, i8** %10, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 5
  store i8 %89, i8* %91, align 1
  %92 = load i8*, i8** %10, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 6
  store i8 48, i8* %93, align 1
  %94 = load %struct.us_data*, %struct.us_data** %6, align 8
  %95 = load %struct.us_data*, %struct.us_data** %6, align 8
  %96 = getelementptr inbounds %struct.us_data, %struct.us_data* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = load i8*, i8** %10, align 8
  %99 = call i32 @usb_stor_ctrl_transfer(%struct.us_data* %94, i32 %97, i32 0, i32 32, i32 0, i32 1, i8* %98, i32 7)
  store i32 %99, i32* %16, align 4
  %100 = load i32, i32* %16, align 4
  %101 = load i32, i32* @USB_STOR_XFER_GOOD, align 4
  %102 = icmp ne i32 %100, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %44
  br label %154

104:                                              ; preds = %44
  %105 = load %struct.us_data*, %struct.us_data** %6, align 8
  %106 = load i8*, i8** %11, align 8
  %107 = load i32, i32* %15, align 4
  %108 = call i32 @jumpshot_bulk_write(%struct.us_data* %105, i8* %106, i32 %107)
  store i32 %108, i32* %16, align 4
  %109 = load i32, i32* %16, align 4
  %110 = load i32, i32* @USB_STOR_XFER_GOOD, align 4
  %111 = icmp ne i32 %109, %110
  br i1 %111, label %112, label %113

112:                                              ; preds = %104
  br label %154

113:                                              ; preds = %104
  store i32 0, i32* %17, align 4
  br label %114

114:                                              ; preds = %130, %113
  %115 = load %struct.us_data*, %struct.us_data** %6, align 8
  %116 = call i32 @jumpshot_get_status(%struct.us_data* %115)
  store i32 %116, i32* %16, align 4
  %117 = load i32, i32* %16, align 4
  %118 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  %119 = icmp ne i32 %117, %118
  br i1 %119, label %120, label %122

120:                                              ; preds = %114
  %121 = call i32 @msleep(i32 50)
  br label %122

122:                                              ; preds = %120, %114
  br label %123

123:                                              ; preds = %122
  %124 = load i32, i32* %16, align 4
  %125 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  %126 = icmp ne i32 %124, %125
  br i1 %126, label %127, label %130

127:                                              ; preds = %123
  %128 = load i32, i32* %17, align 4
  %129 = icmp slt i32 %128, 10
  br label %130

130:                                              ; preds = %127, %123
  %131 = phi i1 [ false, %123 ], [ %129, %127 ]
  br i1 %131, label %114, label %132

132:                                              ; preds = %130
  %133 = load i32, i32* %16, align 4
  %134 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  %135 = icmp ne i32 %133, %134
  br i1 %135, label %136, label %139

136:                                              ; preds = %132
  %137 = load %struct.us_data*, %struct.us_data** %6, align 8
  %138 = call i32 @usb_stor_dbg(%struct.us_data* %137, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %139

139:                                              ; preds = %136, %132
  %140 = load i8, i8* %12, align 1
  %141 = zext i8 %140 to i32
  %142 = load i32, i32* %8, align 4
  %143 = add nsw i32 %142, %141
  store i32 %143, i32* %8, align 4
  %144 = load i32, i32* %15, align 4
  %145 = load i32, i32* %13, align 4
  %146 = sub i32 %145, %144
  store i32 %146, i32* %13, align 4
  br label %147

147:                                              ; preds = %139
  %148 = load i32, i32* %13, align 4
  %149 = icmp ugt i32 %148, 0
  br i1 %149, label %44, label %150

150:                                              ; preds = %147
  %151 = load i8*, i8** %11, align 8
  %152 = call i32 @kfree(i8* %151)
  %153 = load i32, i32* %16, align 4
  store i32 %153, i32* %5, align 4
  br label %158

154:                                              ; preds = %112, %103
  %155 = load i8*, i8** %11, align 8
  %156 = call i32 @kfree(i8* %155)
  %157 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  store i32 %157, i32* %5, align 4
  br label %158

158:                                              ; preds = %154, %150, %41, %25
  %159 = load i32, i32* %5, align 4
  ret i32 %159
}

declare dso_local i8* @min(i32, i32) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @usb_stor_access_xfer_buf(i8*, i32, i32, %struct.scatterlist**, i32*, i32) #1

declare dso_local i32 @usb_stor_ctrl_transfer(%struct.us_data*, i32, i32, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @jumpshot_bulk_write(%struct.us_data*, i8*, i32) #1

declare dso_local i32 @jumpshot_get_status(%struct.us_data*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @usb_stor_dbg(%struct.us_data*, i8*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
